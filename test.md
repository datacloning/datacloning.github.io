---
title: Testing the features
output: 
  md_document:
    variant: markdown_github
    preserve_yaml: true
layout: default
---

Start with a header
===================

Plain text

End a line with two spaces to start a new paragraph.

*italics* and *italics*

**bold** and **bold**

superscript<sup>2</sup>

~~strikethrough~~

[link](http://peter.solymos.org)

Header 1
========

Header 2
--------

### Header 3

#### Header 4

##### Header 5

###### Header 6

endash: --

emdash: ---

ellipsis: ...

inline equation: \(A = \pi*r^{2}\)

\[A = \pi*r^{2}\]

image: ![](favicon.ico)

horizontal rule (or slide break):

------------------------------------------------------------------------

> block quote

-   unordered list
-   item 2
-   sub-item 1
-   sub-item 2

1.  ordered list
2.  item 2

-   sub-item 1
-   sub-item 2

| Table Header | Second Header |
|--------------|---------------|
| Table Cell   | Cell 2        |
| Cell 3       | Cell 4        |

Make a code chunk with three back ticks followed by an r in braces. End the chunk with three back ticks:

``` r
paste("Hello", "World!")
```

    ## [1] "Hello World!"

Place code inline with a single back ticks. The first back tick must be followed by an R, like this Hello World!.

Add chunk options within braces. For example, `echo=FALSE` will prevent source code from being displayed:

    ## [1] "Hello World!"

Data cloning
============

Here is a website
-----------------

Paragraph text.

Some MathJax: inline eq \[ x_{i}=exp(\lambda^2_{i}) \] like this.

Or:

\[ a = \sqrt{b^2 + c^2} \]

Some MathJax: \\(x\_{i}=exp(^2\_{i}))\\

Or:

\\[ a = ]\\

This is inline `code` and this is code block:

``` r
## with some notes
a <- 1 + 2 # here
(b <- a * 2)
```

Well.

Lists:

1.  One,
2.  Two.

And:

-   item
-   item and beyond

finally GFM checkbox:

-   [ ] todo 1
-   [x] done,
-   [ ] not.

> We're living the future so the present is our past.

| First Header                | Second Header                |
|-----------------------------|------------------------------|
| Content from cell 1         | Content from cell 2          |
| Content in the first column | Content in the second column |

An ~~this is strikeout~~ text.

Is it?
