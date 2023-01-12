# Welcome to DateLife's reproducible manuscript GitHub repository!

To reproduce any version of this manuscript, you will need the R packages `datelife`, `drake`, `knitr` and `rmarkdown`.

To install them or update them, use the `install_deps()` function from the [devtools](https://cran.r-project.org/web/packages/devtools/index.html) package as:

```{r}
devtools::install_deps()
```

From the manuscript directory, choose the version of the paper that you want to reproduce, for example `manuscript-1st-submission.Rmd`.
You can open this in RStudio and hit the `knit` button. Or you can go to the R terminal and use `rmarkdown::render("manuscript.Rmd", "all")`, or straight from the terminal do:

```
mv manuscript/
R -e 'rmarkdown::render("manuscript-1st-submission.Rmd", "all")'
```

## Generate a differences file

To create a "differences.tex" file, use [latexdiff](https://www.ctan.org/pkg/latexdiff)
(I installed latexdiff using brew with `brew install latexdiff`):

    latexdiff manuscript/manuscript-1st-submission.tex manuscript/manuscript.tex > manuscript/differences.tex


Then I rendered the differences.tex file from terminal with R:

    R -e 'tools::texi2pdf(file = "manuscript/differences.tex", clean=TRUE)'

And moved it to the folder I want it to be in:

    mv differences.pdf manuscript/submission-sysbio-reviews.pdf
