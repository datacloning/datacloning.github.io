
file <- "~/repos/datacloning.github.io/template.Rmd"
ext = "Rmd"
tag = "-parsed"

out <- paste0(substr(file, 1, nchar(file)-nchar(ext)-1), tag, ".", ext)

## replace triple backtick and `r` with `{r}`
x <- readLines(file)
x[x == "```r"] <- "```{r}"

## find display math
dm1 <- substr(x, 1, 2) == "$$"
dm2 <- substr(x, nchar(x)-1, nchar(x)) == "$$"
dm <- dm1 | dm2

## replace inline `$$` with `$`
x[!dm] <- gsub("$$", "$", x[!dm], fixed=TRUE)

writeLines(x, out)
