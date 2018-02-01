# Sequenzanalyse-und-Genomik-Leipzig

This is a section of the 'Sequenzanalyse-und-Genomik Course' performed at the University of Leipzig. 
This information only represents the "Inferring Horizontal Gene Transfer events" section in this course.

Here you can find the results of HGT detection using QUERY SEQUENCES of the examples. Four example cases
are presented: 

1) A dead-end HGT, where a subunit of the F-type ATPase (atpC), which has been found to be a product of
   HGT, and it has been described as no longer functional (REF1). PHYLOGENETIC ANALYSIS.

2) A “re-thinking” example about the complexity hypothesis. A ribosomal protein was found to be product
   of transfer between archaea and bacteria (REF2). PHYLOGENETIC ANALYSIS.
 
3) Recent HGT events were reported by Lawrence and Ochman for E. coli (Ref3). Here, one gene was taken as example
   to illustrate such event. PARAMETRIC ANALYSIS.

4) A quick example to reconstruct a phylogenetic tree using 9 sequences from Archaea. A phylogenetic tree
   describing these orthologous genes, as well a consensus tree (obtained with 20 bootstrapped trees) that
   tries to support such tree topology and relation of the orthologous genes. PHYLOGENETIC ANALYSIS.


-----------------------------------------------------
REFRENCE:
    * Case 1:  Nature 517:77-80 (2015).
    * Case 2:  Bioinformatics 26(12):1473-6 (2010).
    * Case 3:  J. Mol. Evol. 44: 383-397 (1994).
-----------------------------------------------------



----------------------------------------------------------------------------
The MAIN directories: POCKET MANUAL, PHYLOGENETIC, PARAMETRIC, and SCRIPTS.
----------------------------------------------------------------------------

  - POCKET MANUAL: 
    * PDF file first section:
    Description of the step to reconstruct a ML phylogenetic tree, a ML phylogenetic tree
     with 100 bootstraps, and estimate a consensus tree. Instruction to rename the branches.

    * PDF file second section: 
    Description of the steps to identify potential cases of HGT using parametric methods.
    
  - PHYLOGENETIC: 
    * Sequence alignment (*.phy)
    * Reconstructed phylogenetic tree (no bootstrap). Before and after to be renamed.
    * Reconstructed phylogenetic tree (100X bootstrap). Before and after to be renamed.
    * PERL scripts: 
       To obtain the full taxonomy information from NCBI using the ACCESSION numbers:
    
            get_taxa.sh
      
       To change the fasta headers from ACCESSION to GI numbers:
       
            change_fasta_headers.pl
       
       To retrieve specific set of GI number and their taxonomic info from a specific list GI numbers from a fasta sequence:
       
            retrieve_GIs_TAXA_for_myTree_annotation.pl
       
    * PLOTS: example of the final phylogenetic trees.
          
  - PARAMETRIC:
    * Raw estimation of multiple genomic-signature indices for a genome example (codonw).
    * R script: command line script that produces a dot-plot (ggplot) showing two color codes:
        
              make_plot.R
        
    * PLOTS: two dot-plot examples of Genomic signatures based on the 'codonw' estimation.


### CREDITS:
The "Sequenzanalyse-und-Genomik" course took place at the University of Leizpig (Germany), and was coordinated by Stephan Bernhart, Zasha Weinberg, Sonja Prohaska, and Alejandro Nabor Lozada Chávez.

Additional support was provided by: Ada Andrades, Alexander Holzenleiter, Franziska Reinhardt, Jessica Huebner, and Johanna Dobbriner.

Course info: https://www.bioinf.uni-leipzig.de/teaching/currentClasses/class236.html 


### DISTRIBUTION
This information is free. You can redistribute it and/or used for educational or recreational purpose.

PERL and R scripts: This resource can be distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. These scripts can be
redistribute it and/or used and/or modified for your research, educational or recreational purpose.



			---   Alejandro Nabor Lozada Chavez   ---

