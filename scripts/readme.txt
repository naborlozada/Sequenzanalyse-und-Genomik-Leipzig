

	///  S C R I P T S  /// 


Bash and Perl scripts are used in the PHYLOGENETIC analysis, while the R script
for the PARAMETRIC analysis.

	* PHYLOGENETIC:
	
		1) change_fasta_headers.pl

		2) get_taxa.sh

		3) retrieve_GIs_TAXA_for_myTree_annotation.pl


	* PARAMETRIC:
	
		1) make_plot.R



# --------------------------------------------
Remove long pasta annotation to short (retaining the ACCESSION numbers), after
a BLAST analysis.

	perl change_fasta_headers.pl  >  myNEW_FASTA_short_headers.fasta

# --------------------------------------------
Obtained full taxonomy annotation per gene using ACCESSION numbers. The output is a complete
full OR available NCBI taxonomy per gene table format (tab). Before: chmod 0700 get_taxa.sh

	./get_taxa > myTAXA_info.txt

# --------------------------------------------
Retrieve a specific number and additional info of GI numbers from a pasta file
based on the full list of GI ==> Full_information list table. The output is a 
table of GI ==> Full_information columns.

	perl retrieve_GIs_TAXA_for_myTree_annotation.pl > myRECOVERED_list_of_genes.txt

# --------------------------------------------
R script produce two output file: Figure in PDF format, and saved Rdata session.

Run the script:

      Rscript make_plot.R  <INPUT.file>  <OUTPUT.file>  <RDATA.save_image> 
# --------------------------------------------

