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


REFERENCES:
    * Case 1:  Nature 517:77-80 (2015).
    * Case 2:  Bioinformatics 26(12):1473-6 (2010).
    * Case 3:  J. Mol. Evol. 44: 383-397 (1994).





--- The MAIN directories: POCKET MANUAL, PHYLOGENETIC, PARAMETRIC, and SCRIPTS ---


  - POCKET MANUAL: 
    * PDF file first section:
    Description of the step to reconstruct a ML phylogenetic tree, a ML phylogenetic tree
     with 100 bootstraps, and estimate a consensus tree. Instruction to rename the branches.

    * PDF file second section: 
    Description of the steps to identify potential cases of HGT using parametric methods.
    * Additional helpful files: examples of the taxonomy table, rename leaves in the trees, and
    the codonW output before and after to be plotted.
    
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

Course info (Sequenzanalyse und Genomik (Modul 10-202-2207)): [Class 247](http://legacy.bioinf.uni-leipzig.de/teaching/pastClasses/class247.html). \
Course info (Sequenzanalyse und Genomik (Modul 10-202-2207)): [Class 236](http://legacy.bioinf.uni-leipzig.de/teaching/pastClasses/class236.html).



### DISTRIBUTION
This information is free. You can redistribute it and/or use it for educational or recreational purpose.

PERL and R scripts: This resource can be distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. These scripts can be
redistributed and/or used and/or modified for your research, educational or recreational purpose.



			            ---   Alejandro Nabor Lozada Chavez   ---


<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

