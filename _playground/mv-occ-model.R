library(dclone)
library(rjags)

# Choose sample sizes and prepare observed data array y
set.seed(24)           # If you want to reproduce the data set
M <- 200             # Number of sites
J <- 2                 # Number of presence/absence measurements
y <- matrix(NA, nrow = M, ncol = J) # to contain the obs. data

# Parameter values
psi <- 0.8                    # Probability of occupancy or presence
p <- 0.5                      # Probability of detection

# Generate presence/absence data (the truth)
z <- rbinom(n = M, size = 1, prob = psi)  # R has no Bernoulli

# Generate detection/nondetection data (i.e. presence/absence measurements)
for(j in 1:J){
   y[,j] <- rbinom(n = M, size = 1, prob = z*p)
}
head(y)                      # Look at data from first 6 sites

# Bundle data and summarize data bundle
str( win.data <- list(y = y, M = nrow(y), J = ncol(y)) )


## JAGS ---------------------------------------------

# Specify model in BUGS language
model <- custommodel("model {
# Priors
   psi ~ dunif(0, 1)
   p ~ dunif(0, 1)
# Likelihood
   for (i in 1:M) {           # Loop over sites
      z[i] ~ dbern(psi)       # State model
      for (j in 1:J) {        # Loop over replicate surveys
         y[i,j] ~ dbern(z[i]*p)  # Observation model (only JAGS !)
      }
   }
}")


# Parameters monitored
params <- c("psi", "p")


inits <- list(z = rep(1, M))

## standard rjags session
fn <- write.jags.model(model)
jm <- jags.model(fn, win.data, inits, n.chains=3)
update(jm, 1000)
m1 <- coda.samples(jm, params, n.iter=5000)
clean.jags.model(fn)

## this wrapper does just the same, but no needto write the model file
m2 <- jags.fit(win.data, params, model, inits, n.chains=3)

## parallel rjags session
cl <- makeCluster(3)
parJagsModel(cl, name="m3", model, win.data, inits, n.chains=3)
parUpdate(cl, "m3", 1000)
m3 <- parCodaSamples(cl, "m3", params, n.iter=5000)
stopCluster(cl)


## parallel evaluation with jags.fit
cl <- makeCluster(3)
m4 <- jags.parfit(cl, win.data, params, model, inits, n.chains=3)
stopCluster(cl)

## whan using more than 4 chains, the L'Ecuyer module is recommended
## the function parallel.inits sets the RNG safely within jags.parfit
cl <- makeCluster(10)
parLoadModule(cl, "lecuyer")
m5 <- jags.parfit(cl, win.data, params, model, inits, n.chains=10, n.iter=500)
parUnloadModule(cl, "lecuyer")
stopCluster(cl)

## alternatively, RNG seed and type can be part of inits
load.module("lecuyer")
ini <- parallel.inits(inits, 10)
str(ini)
cl <- makeCluster(10)
parLoadModule(cl, "lecuyer")
m6 <- jags.parfit(cl, win.data, params, model, ini, n.chains=10, n.iter=500)
parUnloadModule(cl, "lecuyer")
stopCluster(cl)
unload.module("lecuyer")

## OpenBUGS ---------------------------------------------

library(R2WinBUGS)
model2 <- custommodel("model {
# Priors
   psi ~ dunif(0, 1)
   p ~ dunif(0, 1)
# Likelihood
   for (i in 1:M) {           # Loop over sites
      z[i] ~ dbern(psi)       # State model
      for (j in 1:J) {        # Loop over replicate surveys
         y[i,j] ~ dbern(mu[i])  # Observation model (only JAGS !)
      }
      mu[i] <- z[i]*p
   }
}")

## it looks like max wont work, but using 1 (max support) does
inits3 <- list(inits, inits, inits)
m7 <- bugs.fit(win.data, params, model2, inits3, n.iter=1000, program="openbugs")

cl <- makeCluster(3)
inits3 <- function() inits
clusterExport(cl, "inits") # inits3 needs inits to be exported to workers
m8 <- bugs.parfit(cl, win.data, params, model2, inits3, n.iter=1000,
    program="openbugs", seed=1:3, n.chains=3)
stopCluster(cl)

cl <- makeCluster(3)
## no need to export data when inits are fully defined
inits3 <-  list(inits, inits, inits)
m8 <- bugs.parfit(cl, win.data, params, model2, inits3, n.iter=1000,
    program="openbugs", seed=1:3, n.chains=3)
stopCluster(cl)

## WinBUGS part: you figured that out!




