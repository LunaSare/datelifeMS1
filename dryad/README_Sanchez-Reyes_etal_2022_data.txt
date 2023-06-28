This README file was generated on 2023-06-07 by Luna L. Sánchez Reyes, <https://orcid.org/0000-0001-7668-2528>


GENERAL INFORMATION

1. Title of Dataset

    Data from: DateLife: leveraging databases and analytical tools to reveal the dated Tree of Life.


2. Author Information

	Corresponding Researcher   
	name: Luna L. Sanchez Reyes    
  institution: University of California, Merced, USA    
  email: sanchez.reyes.luna@gmail.com
  
	Co-researcher 1    
	name: Emily Jane McTavish    
	institution: University of California, Merced, USA

	Co-researcher 2    
	name: Brian C. O'Meara    
	institution: University of Tennessee, Knoxville, USA


3. Date of data collection: 2022-01-28


4. Geographic location of data collection: Online


5. Funding sources that supported the collection of the data: National Science Foundation, USA


6. Recommended citation for this dataset:

    Sánchez-Reyes LL, McTavish EJ & O’Meara BC. (2019). DateLife: leveraging databases and analytical tools to reveal the dated Tree of Life. BioRxiv, 782094.
    
    Data from: DateLife: leveraging databases and analytical tools to reveal the dated Tree of Life. Dryad, Dataset


DATA & FILE OVERVIEW

1. Description of dataset

These data were generated to investigate and showcase the performance of the datelife R package (<https://github.com/phylotastic/datelife>).
We showcased the application of the package with one mock example and two different biological examples.

The first biological example uses datelife on a small sample of bird species.
The second one uses datelife on bird species belonging to the family Fringillidae of 'true finches', following the NCBI taxonomy.
The mock example was created by replacing species names from the small example with letters, and reducing the number of source chronograms.

We evaluated the performance of the package datelife with two analysis: a benchmarking analysis to measure computing time of functions, and a cross validation analysis to test the accuracy and precision of the functions.

2. File List:

File 1 Name: Sanchez-Reyes_etal_2022_table_1.csv    
File 1 Description: CSV (comma separated values) file with node age results from datelife's small example, presented in Table 1 of the manuscript. It contains node names, taxon names defining the nodes, the corresponding node ages (in Million years), and references of source chronograms that were congruified to the chosen tree topology to extract node ages.

File 2 Name: Sanchez-Reyes_etal_2022_table_2.csv    
File 2 Description: CSV (comma separated values) file summarizing age data (in Million years) from table 1, per node. These data are presented in Table 2 of the manuscript. 
	
File 3 Name: Sanchez-Reyes_etal_2022_supplementary_table_S1.csv    
File 3 Description: CSV (comma separated values) file with node age results from datelife's Fringillidae example. It contains node names, taxon names defining the nodes, the corresponding node ages (in Million years), and references of source chronograms that were congruified to the chosen tree topology (shown in Figure 4B of the manuscript) to extract node ages.
	
File 4 Name: Sanchez-Reyes_etal_2022_supplementary_table_S1.pdf    
File 4 Description: PDF version of file Sanchez-Reyes_etal_2022_supplementary_table_S1.csv 

File 5 Name: Sanchez-Reyes_etal_2022_supplementary_table_S2.csv    
File 5 Description: CSV (comma separated values) file summarizing age data (in Million years) from table S1, per node.

File 6 Name: Sanchez-Reyes_etal_2022_supplementary_table_S2.pdf    
File 6 Description: PDF file version of file Sanchez-Reyes_etal_2022_supplementary_table_S2.csv.
	
File 7 Name: Sanchez-Reyes_etal_2022_figure_1_chronogram_mock_example.tre    
File 7 Description: Newick version of chronogram from the mock example shown in Figure 1 of the manuscript (https://www.biorxiv.org/content/10.1101/782094v2).

File 8 Name: Sanchez-Reyes_etal_2022_figure_3_chronogram_small_example.tre    
File 8 Description: Newick version of chronogram from the small example shown in Figure 3 of the manuscript (https://www.biorxiv.org/content/10.1101/782094v2).

File 9 Name: Sanchez-Reyes_etal_2022_figure_4A_topology_finches_mrca.tre    
File 9 Description: Newick version of topology extracted from the Open Tree of Life synthetic tree, shown in Figure 4A of the manuscript (https://www.biorxiv.org/content/10.1101/782094v2).

File 10 Name: Sanchez-Reyes_etal_2022_figure_4B_topology_finches_ncbi.tre    
File 10 Description: Newick version of topology extracted from the Open Tree of Life synthetic tree, shown in Figure 4B of the manuscript (https://www.biorxiv.org/content/10.1101/782094v2).

File 11 Name: Sanchez-Reyes_etal_2022_figure_5_chronogram_finches_example.tre    
File 11 Description: Newick version of chronogram from the finch example shown in Figure 5 of the manuscript (https://www.biorxiv.org/content/10.1101/782094v2).

File 12 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S1.pdf    
File 12 Description: PDf file showing results of cross validation analysis of datelife's chronogram generating functions. 

File 13 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S2.jpg
File 13 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Barker et al. 2013. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 14 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S2_cross_validated.tre
File 14 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S2.jpg

File 15 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S2_source.tre
File 15 Description: Newick file of source chronogram fromBarker et al. 2013 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S2.jpg

File 16 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S3.jpg
File 16 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Barker et al. 2015 - chronogram 1. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 17 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S3_cross_validated.tre
File 17 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S3.jpg

File 18 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S3_source.tre
File 18 Description: Newick file of source chronogram fromBarker et al. 2015 - chronogram 1 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S3.jpg

File 19 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S4.jpg
File 19 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Barker et al. 2015 - chronogram 2. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 20 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S4_cross_validated.tre
File 20 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S4.jpg

File 21 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S4_source.tre
File 21 Description: Newick file of source chronogram fromBarker et al. 2015 - chronogram 2 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S4.jpg

File 22 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S5.jpg
File 22 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Burns et al. 2014. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 23 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S5_cross_validated.tre
File 23 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S5.jpg

File 24 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S5_source.tre
File 24 Description: Newick file of source chronogram fromBurns et al. 2014 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S5.jpg

File 25 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S6.jpg
File 25 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Claramunt et al. 2015. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 26 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S6_cross_validated.tre
File 26 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S6.jpg

File 27 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S6_source.tre
File 27 Description: Newick file of source chronogram fromClaramunt et al. 2015 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S6.jpg

File 28 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S7.jpg
File 28 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Gibb et al. 2015. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 29 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S7_cross_validated.tre
File 29 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S7.jpg

File 30 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S7_source.tre
File 30 Description: Newick file of source chronogram fromGibb et al. 2015 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S7.jpg

File 31 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S8.jpg
File 31 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Hedges et al. 2015 - chronogram 1. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 32 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S8_cross_validated.tre
File 32 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S8.jpg

File 33 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S8_source.tre
File 33 Description: Newick file of source chronogram fromHedges et al. 2015 - chronogram 1 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S8.jpg

File 34 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S9.jpg
File 34 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Hedges et al. 2015 - chronogram 2. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 35 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S9_cross_validated.tre
File 35 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S9.jpg

File 36 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S9_source.tre
File 36 Description: Newick file of source chronogram fromHedges et al. 2015 - chronogram 2 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S9.jpg

File 37 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S10.jpg
File 37 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Hooper et al. 2017. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 38 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S10_cross_validated.tre
File 38 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S10.jpg

File 39 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S10_source.tre
File 39 Description: Newick file of source chronogram fromHooper et al. 2017 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S10.jpg

File 40 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S11.jpg
File 40 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Jetz et al. 2012 - chronogram 1. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 41 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S11_cross_validated.tre
File 41 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S11.jpg

File 42 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S11_source.tre
File 42 Description: Newick file of source chronogram fromJetz et al. 2012 - chronogram 1 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S11.jpg

File 43 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S12.jpg
File 43 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Jetz et al. 2012 - chronogram 2. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 44 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S12_cross_validated.tre
File 44 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S12.jpg

File 45 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S12_source.tre
File 45 Description: Newick file of source chronogram fromJetz et al. 2012 - chronogram 2 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S12.jpg

File 46 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S13.jpg
File 46 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Kimball et al. 2019 - chronogram 1. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 47 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S13_cross_validated.tre
File 47 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S13.jpg

File 48 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S13_source.tre
File 48 Description: Newick file of source chronogram fromKimball et al. 2019 - chronogram 1 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S13.jpg

File 49 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S14.jpg
File 49 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Kimball et al. 2019 - chronogram 2. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 50 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S14_cross_validated.tre
File 50 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S14.jpg

File 51 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S14_source.tre
File 51 Description: Newick file of source chronogram fromKimball et al. 2019 - chronogram 2 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S14.jpg

File 52 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S15.jpg
File 52 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Oliveros et al. 2019. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 53 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S15_cross_validated.tre
File 53 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S15.jpg

File 54 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S15_source.tre
File 54 Description: Newick file of source chronogram fromOliveros et al. 2019 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S15.jpg

File 55 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S16.jpg
File 55 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Price et al. 2014 - chronogram 1. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 56 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S16_cross_validated.tre
File 56 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S16.jpg

File 57 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S16_source.tre
File 57 Description: Newick file of source chronogram fromPrice et al. 2014 - chronogram 1 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S16.jpg

File 58 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S17.jpg
File 58 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Price et al. 2014 - chronogram 2. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 59 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S17_cross_validated.tre
File 59 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S17.jpg

File 60 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S17_source.tre
File 60 Description: Newick file of source chronogram fromPrice et al. 2014 - chronogram 2 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S17.jpg

File 61 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S18.jpg
File 61 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Roquet et al. 2014 - chronogram 1. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 62 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S18_cross_validated.tre
File 62 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S18.jpg

File 63 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S18_source.tre
File 63 Description: Newick file of source chronogram fromRoquet et al. 2014 - chronogram 1 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S18.jpg

File 64 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S19.jpg
File 64 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Roquet et al. 2014 - chronogram 2. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 65 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S19_cross_validated.tre
File 65 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S19.jpg

File 66 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S19_source.tre
File 66 Description: Newick file of source chronogram fromRoquet et al. 2014 - chronogram 2 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S19.jpg

File 67 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S20.jpg
File 67 Description: JPG file of results of cross validation analysis of datelife chronogram generating functions, using a tree topology from Uyeda et al 2017. Comparison of original chronogram (black) and the chronogram obtained using datelife (gray).

File 68 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S20_cross_validated.tre
File 68 Description: Newick file of chronogram cross validated using dates obtained with datelife, shown in gray on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S20.jpg

File 69 Name: Sanchez-Reyes_etal_2022_supplementary_figure_S20_source.tre
File 69 Description: Newick file of source chronogram fromUyeda et al 2017 used for the cross validaton analysis shown on supplementary figure Sanchez-Reyes_etal_2022_supplementary_figure_S20.jpg


METHODOLOGICAL INFORMATION

All age data and chronograms were obtained using the R package datelife v0.6.5 https://CRAN.R-project.org/package=datelife and the chronogram database OpenTreeChronograms v2022.1.28


DATA-SPECIFIC INFORMATION FOR: Sanchez-Reyes_etal_2022_table_1.csv 

1. Number of variables/columns: 4 

2. Number of cases/rows: 28 

3. Variable List:
	taxon A: Node names in tree topology, as defined by taxon A and taxon B.
	taxon B: Scientific name of the first element of a taxon pair that defines a node from a tree topology.
	Node Age: Scientific name of the second element of a taxon pair that defines a node from a tree topology.
	Study chronogram: Ages of nodes defined by taxon A and taxon B, in Million years.
	taxon A: Reference of the study that published the chronogram from which the node ages were extracted.

4. Missing data codes: None

5. Abbreviations used: NA = not applicable


DATA-SPECIFIC INFORMATION FOR: Sanchez-Reyes_etal_2022_table_2.csv 

1. Number of variables/columns: 8 

2. Number of cases/rows: 5 

3. Variable List:
	Min Age: Names of nodes from the tree topology used for the dating analysis.
	Q1: Minimum node age, in Million years.
	Median Age: First quartile of node age distributions, in Million years.
	Mean Age: Mean node age, in Million years.
	Q3: Median node age, in Million years.
	Max Age: Third quartile of node age distributions, in Million years.
	Variance: Maximum node age, in Million years.
	SD: Variance of node age, in Million years.
	Min Age: Standard deviation of node age, in Million years.

4. Missing data codes: None

5. Abbreviations used: NA = not applicable


DATA-SPECIFIC INFORMATION FOR: Sanchez-Reyes_etal_2022_supplementary_table_S1.csv 

1. Number of variables/columns: 4 

2. Number of cases/rows: 818 

3. Variable List:
	taxon A: Node names in tree topology, as defined by taxon A and taxon B.
	taxon B: Scientific name of the first element of a taxon pair that defines a node from a tree topology.
	Node Age: Scientific name of the second element of a taxon pair that defines a node from a tree topology.
	Study reference: Ages of nodes defined by taxon A and taxon B, in Million years.
	taxon A: Reference of the study that published the chronogram from which the node ages were extracted.

4. Missing data codes: None

5. Abbreviations used: NA = not applicable


DATA-SPECIFIC INFORMATION FOR: Sanchez-Reyes_etal_2022_supplementary_table_S2.csv 

1. Number of variables/columns: 8 

2. Number of cases/rows: 194 

3. Variable List:
	Min Age: Names of nodes from the tree topology used for the dating analysis.
	Q1: Minimum node age, in Million years.
	Median Age: First quartile of node age distributions, in Million years.
	Mean Age: Mean node age, in Million years.
	Q3: Median node age, in Million years.
	Max Age: Third quartile of node age distributions, in Million years.
	Variance: Maximum node age, in Million years.
	SD: Variance of node age, in Million years.
	Min Age: Standard deviation of node age, in Million years.

4. Missing data codes: None

5. Abbreviations used: NA = not applicable

