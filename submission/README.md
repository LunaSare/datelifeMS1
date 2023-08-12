### Response to review

cp review.pdf submission/response.pdf

### Main files original file names:

cp manuscript/manuscript.tex submission/manuscript.tex
cp manuscript/manuscript.pdf submission/manuscript.pdf
cp manuscript/paper_references.bib submission/paper_references.bib
cp manuscript/systematic-biology.csl submission/systematic-biology.csl

### Table original files:

pdf files:
    cp tables/table-fringillidae-small-example.pdf submission/table_1.pdf
    cp tables/table-fringillidae-small-example-summary.pdf submission/table_2.pdf

Development files:
    manuscript/table1.Rmd
    manuscript/table2.Rmd

tex files:
    cp tables/table-fringillidae-small-example.tex submission/table1.tex
    cp tables/table-fringillidae-small-example-summary.tex submission/table2.tex


### Figure original file names:

cp figures/figure-workflow/figure1-new-cycle-vertical.pdf submission/Figure_1.pdf

cp figures/fig_runtime_main.pdf submission/Figure_2.pdf
cp figures/figure-small-example/figure3-horizontal.pdf submission/Figure_3.pdf
cp figures/fringillidae-topologies/fringillidae-topology.pdf submission/Figure_4.pdf
cp figures/figure-fringillidae/figure5.png submission/Figure_5.png
<!-- 
Install required to use convert:
brew install imagemagick
-->
convert -density 100 submission/Figure_5.png submission/Figure_5.pdf

cp figures/fringillidae-cross-validation/fig-cross-validation-xy-plots.pdf submission/Figure_6.pdf


### Figure caption files:

manuscript/fig-workflow.Rmd
manuscript/fig-benchmark.Rmd
manuscript/fig-small-example.Rmd
manuscript/fig-topologies.Rmd
manuscript/fig-fringillidae-full-example.Rmd
manuscript/fig-cross-validation.Rmd

submission/final-captions.tex

### Previous figure and table references in manucript.Rmd file:

  Figure 1: \ref{fig:workflow}
  Figure 2: \ref{fig:runtime_main}
  Figure 3: \ref{fig:figure2}
  Figure 4: \ref{fig:fringillidae-topologies}
  Figure 5: \ref{fig:fringillidages} 
  Figure 6: \ref{fig:cvXY}
  
  Table 1: \ref{tbl:table1}
  Table 2: \ref{tbl:table2}


