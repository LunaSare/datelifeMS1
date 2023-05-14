getwd()

fringillidae_paraphyletic <- ape::read.tree("figures/fringillidae-topologies/fringillidae_paraphyletic_topology.tre")

usethis::use_data(fringillidae_paraphyletic)

fringillidae_monophyletic <- ape::read.tree("figures/fringillidae-topologies/fringillidae_monophyletic_topology.tre")

usethis::use_data(fringillidae_monophyletic)

rotl::tol_about()

# For documentation:

#' OpenTree Synthetic Tree of Life.
#'
#' Tree version: opentree13.4
#' Taxonomy version: 3.3draft1
#' Constructed on: 2021-06-18 11:13:49
#' Number of terminal taxa: 2392042
#' Number of source trees: 1239
#' Number of source studies: 1184
#' Source list present: false
#' Root taxon: cellular organisms
#' Root ott_id: 93302
