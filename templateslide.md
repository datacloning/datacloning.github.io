---
title: Slide template
layout: slide
---
name: inverse
layout: true
class: center, middle, inverse
---
template: inverse

## How does it work, then?
---
layout: false
# Enyime

---

# Agenda

1. Introduction

> Blockquote
> he-he.

--
2. Deep-dive
3. ...

---
.left-column[
  ## What is it?
  ## Why use it?
  ## Mikor???
]
.right-column[
If your ideal slideshow creation workflow contains any of the following steps:

- Just write what's on your mind

- Do some basic styling

- Easily collaborate with others

- Share with and show to everyone

Then remark might be perfect for your next.red[*] slideshow!

.footnote[.red[*] You probably want to convert existing slideshows as well]
]
---

# Introduction

```R
a <- 10
*b = a
f <- a
```

<p>Inline math is \(x_i = \sqrt{\frac{a}{c}} \), or eq:</p>
<p>$$x_i = \pi r_{i}^{\Lambda}$$</p>
<p>\[x_i = \pi r_{i}^{\Lambda}\]</p>

Inline math is \(x_i = \sqrt{\frac{a}{c}} \), or eq:
$$x_i = \pi r_{i}^{\Lambda}$$
\[x_i = \pi r_{i}^{\Lambda}\]

.footnote[.red.bold[*] Important footnote]
---

class: center, middle

# `\(\LaTeX{}\)` in remark

---

# Display and Inline

1. This is an inline integral: `\(\int_a^bf(x)dx\)`
2. This is an inline integral, too: `$\int_a^bf(x)dx$`
3. More `\(x={a \over b}\)` formulae.

Display formula:
    `$$e^{i\pi} + 1 = 0$$`

    </textarea>
    <script src="./assets/remark.min.js" type="text/javascript"></script>
    <script src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML&delayStartupUntil=configured" type="text/javascript"></script>
    <script type="text/javascript">
      var slideshow = remark.create();

      // Setup MathJax
      MathJax.Hub.Config({
          tex2jax: {
          inlineMath: [['$','$'], ['\\(','\\)']]
          }
      });
      MathJax.Hub.Config({
          tex2jax: {
          skipTags: ['script', 'noscript', 'style', 'textarea', 'pre']
          }
      });
      MathJax.Hub.Queue(function() {
          $(MathJax.Hub.getAllJax()).map(function(index, elem) {
              return(elem.SourceElement());
          }).parent().addClass('has-jax');
      });

      MathJax.Hub.Configured();
    </script>
  </body>
</html>
