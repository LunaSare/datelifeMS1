# Data for node age comparison

## Extract calibrations

calibs_all <- datelife::extract_calibrations_phylo(input = dsumm$phylo_all,
                                               each = FALSE)
length(calibs_all)
class(calibs_all)
names(calibs_all)
nrow(calibs_all)
unique(calibs_all$reference)
# There are only 9 unique studies

calibs_each <- datelife::extract_calibrations_phylo(input = dsumm$phylo_all,
                                               each = TRUE)

length(calibs_each)
class(calibs_each)
names(calibs_each)
sapply(calibs_each, nrow)
sum(sapply(calibs_each, nrow))


## Match calibrations to a given topology

### Choose a topology

#### Options are:

dsumm$phylo_median
dsumm$phylo_sdm
dsumm$phylo_biggest
names(dsumm$data_frame)
dsumm$data_frame$Ntax

dquery$cleaned_names


rotl::tnrs_match_names("fringillidae")
#>   search_string  unique_name approximate_match ott_id is_synonym
#> 1  fringillidae Fringillidae             FALSE 839319      FALSE
#>   flags number_matches
#> 1                    1

rotl::is_in_tree(ott_ids = 839319)
#> [1] FALSE

rotl::tol_subtree(ott_id = "839319")

ot <- rotl::tol_induced_subtree(ott_ids = dquery$ott_ids, label_format = "name")

matched <- datelife::match_all_calibrations(phy = ot, calibrations = calibs_all)

class(matched)
names(matched)
matched$matched_calibrations
names(matched$matched_calibrations)
nrow(matched$matched_calibrations)
nrow(matched$present_calibrations)
names(matched$present_calibrations)
write.csv(matched$matched_calibrations, file = "data-raw/fringillidae-matched-calibrations.csv")

matched$matched_calibrations["58",]
which("5e34a632bf6fe8c2400e7a20efe22e98" == matched$present_calibrations$MRCA)

# necesito matchear todos los pares de nombres a los nodos de mi arbol sintetico

unique(matched$matched_calibrations$reference)
# Only chronograms from 5 studies have matched to the nodes of my `ot` synth tree

unique(matched$present_calibrations$reference)
# Out of 9 unique studies

length(unique(matched$present_calibrations$taxonA)) #214
length(unique(matched$present_calibrations$taxonB)) #242
length(unique(matched$matched_calibrations$taxonA)) # 141
length(unique(matched$matched_calibrations$taxonB)) # 170

match(unique(matched$present_calibrations$taxonA), matched$matched_calibrations$taxonA)

match(unique(matched$present_calibrations$taxonA), ot$tip.label)
