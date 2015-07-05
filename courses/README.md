# Course directory guidelines

The `index.Rmd` and corresponding `index.html` lists courses 
(at some point can be auto generated, but it is not a huge priority).

Subdirectories follow the pattern `./year/town/`.

Within each course directory, there are the following files:

* `index.Rmd`: course flyer with TOC, linking to the lectures
  (this is where auto generated titles point back to),
* the lectures, `XX` is the number of the lecture that links notes, slides, apps together:
  - `notes-XX-lecture-title.Rmd` is markdown file with lecture notes,
  - `slides-XX-lecture-title.Rmd` is the lecture slides,
  - `app-XX-app-name.Rmd` is an app for a lecture,
* any other supporting files necessary,
* directories, such as `./images/`,
* `./pdfs/*.pdf` containing pdf versions of the slides/lectures for easier offline use: 
  - lecture notes a run through `knitr` to have code and output,
  - slides are printed as pdf from Chrome.
