
#' provide new colnames
#'
# some_table <- calib_summ$in_phy
# # Change node numbers by node names
# colnames(some_table)

make_pretty_table <- function(some_table,
                              duplicated_criteria,
                              cols2keep_order,
                              order_rows = FALSE,
                              colnames_new){
  # Eliminate duplicated rows:
  if (missing(duplicated_criteria)) {
    duplicated_criteria <- c("taxonA", "taxonB", "reference","MaxAge")
  }
  ## Find the duplicated rows within studies:
  ## Note: take into account age too, taxon pairs might come from different studies.
  taxon_pairs_ref <- c()
  for (i in seq(nrow(some_table))) {
    tax_pair_ref <- as.character(some_table[i, duplicated_criteria])
    tax_pair_ref <- tax_pair_ref[order(tax_pair_ref)]
    tax_pair_ref <- paste(tax_pair_ref, collapse = "")
    taxon_pairs_ref <- c(taxon_pairs_ref, tax_pair_ref)
  }
  ## Eliminate duplicated rows if any:
  if (any(duplicated(taxon_pairs_ref))) {
    indices <- which(duplicated(taxon_pairs_ref))
    message("Eliminating duplicated data from rows: ", paste(indices, collapse = " | "))
    pretty_calibs <- some_table[!duplicated(taxon_pairs_ref),]
  }
  # If no duplicated row, assign some_table variable to object pretty_table:
  if (sum(duplicated(taxon_pairs_ref)) == 0) {
    message("There are no duplicated calibrations.")
    pretty_calibs <- some_table
  }
  if (order_rows) {
    row_order <- order(pretty_calibs$mrca_node_number,
                       pretty_calibs$MaxAge,
                       pretty_calibs$reference,
                       pretty_calibs$taxonA,
                       pretty_calibs$taxonB)
    pretty_calibs[row_order,]
  }
  # Reorder ROWS by node number, reference, age and taxon names
  if (missing(cols2order_rows)) {
    cols2order_rows <- c("mrca_node_name",
                         "MaxAge",
                         "study",
                         "taxonA",
                         "taxonB")
  }
  for (column in cols2order_rows) {
    row_order <- order(pretty_calibs[,column])
    pretty_calibs <- pretty_calibs[row_order,]
  }

  # Assign a node name
  # number_of_tips <- min(pretty_calibs$mrca_node_number)-1
  # some_table$mrca_node_name <- paste0("n", (pretty_calibs$mrca_node_number - number_of_tips))

  # Keep columns of interest and order them
  if(missing(cols2keep_order)) {
    cols2keep_order <- c("mrca_node_name", "taxonA", "taxonB", "MaxAge", "reference")
  }
  pretty_calibs <- pretty_calibs[ , cols2keep_order]

  # Modify column names to be informative
  if (missing(colnames_new)) {
    colnames_new <- c("Node Name", "taxon A", "taxon B", "Node Age", "Study reference")
  }
  colnames(pretty_calibs) <- colnames_new

  # substitute underscore by space:
  pretty_calibs$`taxon A` <- sub("_", " ", pretty_calibs$`taxon A`)
  pretty_calibs$`taxon B` <- sub("_", " ", pretty_calibs$`taxon B`)

  # order taxa alphabetically by column
  for (i in seq(nrow(pretty_calibs))) {
    original <- as.character(pretty_calibs[i, c("taxon A", "taxon B")])
    reordered <- original[order(original)]
    pretty_calibs[i, c("taxon A", "taxon B")] <- reordered
  }
  # Eliminate rownames
  rownames(pretty_calibs) <- NULL
  pretty_calibs
}
