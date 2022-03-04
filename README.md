# Welcome to DateLife's reproducible manuscript GitHub repository!

To reproduce any version of this manuscript, you will need the R packages `datelife`, `drake`, `knitr` and `rmarkdown`.

To install them or update them, use the `install_deps()` function from the [devtools](https://cran.r-project.org/web/packages/devtools/index.html) package as:

```{r}
devtools::install_deps()
```

From the manuscript directory, choose the version of the paper that you want to reproduce, for example `date`.
You can open this in RStudio and hit the `knit` button. Or you can go to the R terminal and use `rmarkdown::render("manuscript.Rmd", "all")`, or straight from the terminal do:

```
R -e 'rmarkdown::render("manuscript.Rmd", "all")'
```
