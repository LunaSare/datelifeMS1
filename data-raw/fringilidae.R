## Code to prepare paper datasets and figures goes here

# Load the chronogram database i.e, OpenTree chronograms

utils::data("opentree_chronograms", package = "datelife")

# Prepare your taxon names for a datelife search

dquery = datelife::make_datelife_query(input = "fringilidae", get_spp_from_taxon = TRUE)

length(dquery$cleaned_names) # 289 species names in Fringilidae

usethis::use_data(dquery, overwrite = TRUE)

# Run a datelife search: matching at least 2 species names or mroe in the chronogram database

dres = datelife::get_datelife_result(input = frin_sample, cache = opentree_chronograms)

usethis::use_data(dres, overwrite = TRUE)

# Summarize the datelife result

dsumm = datelife:::summary.datelifeResult(datelife_query = dquery, object = dres)

usethis::use_data(dsumm, overwrite = TRUE)



# OLD stuff:
# LTT plot
cb_cols1 = c("#0072B2",
             "#D55E00",
             "#440154FF",
             "#CC79A7",
             "#440154FF",
             "#009E73",
             "#9ad0f3",
             "#95D840FF",
             "#F0E442")
cb_cols2 = c("#440154FF",
             "#009E73",
             "#e79f00",
             "#9ad0f3",
             "#0072B2",
             "#D55E00",
             "#CC79A7",
             "#F0E442",
             "#95D840FF")
ltt_plot = datelifeplot::plot_ltt_phyloall(taxon = "Fringillidae",
                             phy = dsumm$phyloall,
                             ltt_colors = cb_cols1,
                             tax_datedotol = NULL,
                             file_name = "ltt_plot_poster.pdf",
                             file_dir = getwd(),
                             height = 3,
                             width = 7.9,
                             add_legend = FALSE,
                             add_title = FALSE)
usethis::use_data(ltt_plot, overwrite = TRUE)

# datedotol = datelife::get_dated_otol_induced_subtree(input = dq,
#                                           ott_ids = dq$ott_ids)

bestgrove = datelife::get_best_grove(datelife_result = dr)
usethis::use_data(bestgrove, overwrite = TRUE)

sdm_matrix = datelife::get_sdm_matrix(datelife_result = bestgrove$best_grove)
usethis::use_data(sdm_matrix, overwrite = TRUE)

median_matrix = datelife::datelife_result_median_matrix(datelife_result = bestgrove$best_grove)
usethis::use_data(median_matrix, overwrite = TRUE)

otol = datelife::get_otol_synthetic_tree(input = dq)
usethis::use_data(otol, overwrite = TRUE)

phy_sdm = datelife::summary_matrix_to_phylo_all(summ_matrix = sdm_matrix,
                                                target_tree = otol)
usethis::use_data(phy_sdm, overwrite = TRUE)

phy_median = datelife::summary_matrix_to_phylo_all(summ_matrix = median_matrix,
                                         target_tree = otol)
usethis::use_data(phy_median, overwrite = TRUE)

ltt_summ = datelifeplot::plot_ltt_summary(taxon = "Fringillidae", phy = phyloall, phy_sdm, phy_median,
      file_name = "ltt_summ_poster.pdf", file_dir = "~//Desktop//datelife_paper1//", height = 3, width = 7.9,
      add_legend = TRUE)
# usethis::use_data(ltt_sum, overwrite = TRUE)

each_calibrations = datelife::get_all_calibrations(phyloall, each = TRUE)
usethis::use_data(each_calibrations, overwrite = TRUE)
