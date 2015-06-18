# Course directory guidelines

The `index.md` and corresponding `index.html` lists courses (at some point can be auto generated, but it is not a huge priority).

Subdirectories follow the pattern `./year/town/`.

Within each course directory, there are the following files:

* `index.md`: course flyer with TOC, linking to the lectures
  (this is where auto generated titles point back to),
* the lectures:
  - `00-lecture.Rmd` is about general install/setup stuff,
  - `01-lecture.Rmd` ... `xx-lecture.Rmd` are the lectures
    (it can be `01-intro`, but numbering is the key),
* any other supporting file necessary
* `*.pdf` versions of the lectures for easier offline use.
