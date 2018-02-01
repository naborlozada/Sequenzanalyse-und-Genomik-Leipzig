# Sequenzanalyse-und-Genomik-Leipzig-2018

This is a small part of the Sequenzanalyse-und-Genomik Course performed at the University of Leipzig.
This data only represent the "Inferring Horizontal Gene Transfer events" section in this course.

Here you can find the results of HGT detection in the QUERY SEQUENCE example (dead-end HGT). The HGT gene is used here as
example represent a subunit of the F-type ATPase (atpC) which has been found product of HGT and ithas been described as no
longer  functional (REF1).

The MAIN directories: POCKET MANUAL, PHYLOGENETIC, and PARAMETRIC.

  - POCKET MANUAL: 
    * PDF file first section:
    Description of the step to reconstruct a ML phylogenetic tree, a ML phylogenetic tree
     with 100 bootstraps, and estimate a consensus tree. Instruction to rename the branches.

    * PDF file second section: 
    Description of the steps to identify potential cases of HGT using parametric methods.
    
  - PHYLOGENETIC: 
    * Blast hits BEFORE (500) and AFTER (290) the redundancy filtering (*.fasta).
    * Sequence alignment (*.phy)
    * Reconstructed phylogenetic tree (no bootstrap). Before and after its rename.
    * Reconstructed phylogenetic tree (100X bootstrap). Before and after its rename.
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
The "Sequenzanalyse-und-Genomik" course was taking place at the University of Leizpig (Germany), and was coordinated by Stephan Bernhart, Zasha Weinberg, and Sonja Prohaska. Additional support was provided from: Ada Andrades, Alexander Holzenleiter, Franziska Reinhardt, Jessica Huebner, and Johanna Dobbriner.

Course info: https://www.bioinf.uni-leipzig.de/teaching/currentClasses/class236.html 


### DISTRIBUTION

This information is free. You can redistribute it and/or used for educational or recreational purpose.

PERL and R scripts: This resource can be distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. These scripts can be
redistribute it and/or used and/or modified for your research, educational or recreational purpose.



			---   Alejandro Nabor Lozada Chavez   ---

