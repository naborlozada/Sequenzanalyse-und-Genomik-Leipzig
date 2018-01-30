# Sequenzanalyse-und-Genomik-Leipzig-2018
Final results from the Bioinformatics course at University of Leipzig

"Inferring Horizontal Gene Transfer events"

Here you can find the results of HGT detection in the QUERY SEQUENCE (dead-end HGT)

The MAIN directories:
  - POCKET MANUAL: 
    * PDF file first section:
    Description of the step to reconstruct a ML phylogenetic tree, a ML phylogenetic tree
     with 100 bootstraps, and estimate a consensus tree. Instruction to rename the branches.

    * PDF file second section: 
    Description of the steps to identify potential cases of HGT using parametric methods.
    
  - PHYLOGENETIC: 
        - Blast hits BEFORE (500) and AFTER (290) the redundancy filtering (*.fasta).
        - Sequence alignment (*.phy)
        - Reconstructed phylogenetic tree (no bootstrap). Before and after its rename.
        - Reconstructed phylogenetic tree (100X bootstrap) Before and after its rename.
        - PERL scripts: 
            - Obtain the full taxonomy information from NCBI using the ACCESSION numbers
            - Change the fasta headers from ACCESSION to GI numbers.
            - Retrieve specific set of GI number and their taxonomic info from a specific list
              GI numbers from a fasta sequence.
        - PLOTS: example of the final phylogenetic trees.
          
  - PARAMETRIC:
        - Raw estimation of multiple genomic-signature indices for a genome example (codonw).
        - R script: command line script that produces a dot-plot (ggplot) showing two color codes.
        - PLOTS: two dot-plot examples of Genomic signatures based on the 'codonw' estimation.


## COPYRIGHT AND LICENCE

Copyright (C) 2018 Alejandro N. Lozada Chavez <n.lozada@hhu.de>

This library is free an information; you can redistribute it and/or modify it
under the same terms as Perl itself, either Perl version 5.10.0 or, at your
option, any later version of Perl 5 you may have available.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
more details.

