
This directory contains two subdirectories with genes used as cases to detect HGT events:

  1)  Case 1 (only trees): Phylogenetic analysis of HGT in ribosomal genes (revisiting the Complexity Hypothesis).
            - The original alignment file in phylip format.
            - Reconstructed of the best ML tree (simple DIR). All RAxML outputs and the renamed tree with the corresping gene taxa.
            - Reconstructed of the best ML tree and 100 boopstrapped ML trees (bootstraps DIR). All best ML tree and the bootstrapped
                tree. Three additional files: 
                    1) labels for the leaves to rename the tree, (the corresping gene taxa), 
                    2) the 'outtree' produced by Phylip (the consensus tree), and
                    3) the renamed 'outtree' tree *.new_labels.tree

  2) Case 2 (only trees): the subunit C of the ATPase found to be product of HGT in Archaea. Files:
            - The original alignment file in phylip format.
            - Reconstructed of the best ML tree (simple DIR). Reconstructed of the bestTree, the final ML tree found by RAxML, and
              the renamed leaves of the tree (the corresping gene taxa).
            - Reconstructed of 100 ML trees by RAxML (bootstraps DIR). Three additional files: 
                    1) labels for the leaves to rename the leaves of the  tree (the corresping gene taxa), 
                    2) the 'outtree' produced by Phylip (the consensus tree), and
                    3) the renamed 'outtree' tree *.new_labels.tree
    
    
 Reference:
    * Case 1: Nature 517:77-80 (2015).
    * Case 2: Bioinformatics 26(12):1473-6 (2010).
   
    
    
