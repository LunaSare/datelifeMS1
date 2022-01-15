#' Fringillidae `datelifeQuery`
#'
#' @name dquery
#' @docType data
#' @format A `datelifeQuery` object
#' @keywords datelife fringillidae tnrs
#' @details
#' Generated with
#' dquery = datelife::make_datelife_query(input = "fringilidae", get_spp_from_taxon = TRUE)
#' usethis::use_data(dquery, overwrite = TRUE)
"dquery"


#' Fringillidae `datelifeResult`
#'
#' @name dres
#' @docType data
#' @format A `datelifeResult` object
#' @keywords datelife fringillidae tnrs
#' @details
#' Generated with
#' dres = datelife::get_datelife_result(input = dquery, cache = opentree_chronograms)
#' usethis::use_data(dres, overwrite = TRUE)
"dres"


#' Fringillidae `datelifeResultSummary`
#'
#' @name dsumm
#' @docType data
#' @format A `datelifeResultSummary` object
#' @keywords datelife fringillidae tnrs
#' @details
#' Generated with
#' dsumm = datelife::summary.datelifeResult(datelife_query = dquery, object = dres)
#' usethis::use_data(dsumm, overwrite = TRUE)
"dsumm"
