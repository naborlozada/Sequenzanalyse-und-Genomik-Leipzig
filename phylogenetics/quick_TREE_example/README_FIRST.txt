
Make a fast bootstrapping with 9 aligned sequences.

STEPS:

1) Download the alignment file.
2) Make a maximum likelihood search and bootstrap analysis at once:
   HOW-to:
	raxmlHPC-PTHREADS -f a -m PROTGAMMAWAG -p 12345 -x 12345 -# 20 -s myExample.aln.phy -n myExample.aln.20_bootstrapping.tree -T 4

3) WAIT till RAxML produce the last files and send this message:
   	

	All 20 bootstrapped trees written to:					/MY/FULL/PATH/RAxML_bootstrap.cluster100.aln.T_fastBootstrapping.20_rep.tree

	Best-scoring ML tree written to:					/MY/FULL/PATH/RAxML_bestTree.cluster100.aln.T_fastBootstrapping.20_rep.tree

	Best-scoring ML tree with support values written to:			/MY/FULL/PATH/RAxML_bipartitions.cluster100.aln.T_fastBootstrapping.20_rep.tree

	Best-scoring ML tree with support values as branch labels written to: 	/MY/FULL/PATH/RAxML_bipartitionsBranchLabels.cluster100.aln.T_fastBootstrapping.20_rep.tree


4) Make a consensus tree:


   	raxmlHPC-PTHREADS -m PROTGAMMAWAG -p 12345 -J MR -z myExample.20_bootstrapped.aln.phy -n myExample.20_bootstrapped.aln.consensus.tree





