############################################################################
# Function based on https://github.com/LunaSare/datelife_examples/blob/master/R/functions_data.R#L3
# get calibrations form all other chronograms not belonging to the same study
congruify_other_calibrations <- function(phylo_all, index) {
    # dd <- duplicated(names(phyloall))
    cat(index, " -- ", names(phylo_all)[index], "\n")
    study <- names(phylo_all) %in% names(phylo_all)[index]
    res <- datelife::congruify_and_mrca_multiPhylo(phy = phylo_all[study][[1]],
                                                   source_chronograms = phylo_all[!study])
    res <- list(res)
    names(res) <- names(phylo_all)[index]
    res
}
############################################################################

congruify_other_calibrations_all <- function(phylo_all){
    # dd <- duplicated(names(phylo_all))
    res <- lapply(seq(phylo_all), function(i){
        cat(i, " -- ", names(phylo_all)[i], "\n")
        dd <- names(phylo_all) %in% names(phylo_all)[i]
        datelife::congruify_and_mrca_multiPhylo(phy = phylo_all[dd][[1]],
                                                source_chronograms = phylo_all[!dd])
    })
    names(res) <- names(phylo_all)
    res
}
############################################################################
# Based on function use_othercals3 from https://github.com/LunaSare/datelife_examples/blob/master/R/functions_data.R#L36
use_other_calibrations <- function(trees, other_calibrations, ...){
    res <- lapply(seq(trees), function(i){
      phy <- trees[[i]]
      phy$edge.length <- NULL
      print(i)
        xx <- suppressMessages(suppressWarnings(datelife::use_calibrations_bladj(phy,
            calibrations = other_calibrations[[i]], ...)))
        return(xx)
    })
    class(res) <- "multiPhylo"
    names(res) <- names(trees)
    res
}
############################################################################
# Function to date source chronograms with data from other chronograms
cross_date <- function(calibrations, index) {
  cat(index, " -- ", names(calibrations)[index], "\n")

  calibrations <- calibrations[[index]]
  print(calibrations)
  if (length(calibrations) == 1) {
    message("... Source chronogram has no calibrations.")
    return(NA)
  }
  res <- use_calibrations_bladj.matchedCalibrations(calibrations = calibrations,
                                                    type = "mean")
  res
}
############################################################################
