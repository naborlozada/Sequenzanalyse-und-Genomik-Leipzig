

	///  S C R I P T S  /// 


Bash and Perl scripts are used in the PHYLOGENETIC analysis, while the R script
for the PARAMETRIC analysis. READ the instructions in each script (at the beginning
of each code) to avoid problems. 

	* PHYLOGENETIC:
	
		1) change_fasta_headers.pl

		2) get_taxa.sh

		3) retrieve_GIs_TAXA_for_myTree_annotation.pl


	* PARAMETRIC:
	
		1) make_plot.R


# --------------------------------------------
Obtained full taxonomy annotation per gene using ACCESSION numbers. The output is a complete
full OR partial available NCBI taxonomy annotation per gene, and is displayed in a table format
separated by tab spaces. Before run it, do: chmod 0700 get_taxa.sh

	./get_taxa > myTAXA_info.txt

# --------------------------------------------
Replace the ACCESSION numbers per GI numbers availables for the sequences from NCBI database.
The program use a table containing the complete taxonomy in NCBI provided by the script
"get_taxa.sh"

	perl change_fasta_headers.pl  >  myNEW_FASTA_short_headers.fasta

# --------------------------------------------
Retrieve a specific number and additional info of GI numbers from a pasta file
based on the full list of GI ==> Full_information list table. The output is a 
table of GI ==> Full_information columns.

	perl retrieve_GIs_TAXA_for_myTree_annotation.pl > myRECOVERED_list_of_genes.txt

# --------------------------------------------
R script produce two output file: Figure in PDF format, and saved Rdata session (it is needed
to reproduce your results in the future).

Run the script:

      Rscript make_plot.R  <INPUT.file>  <OUTPUT.file>  <RDATA.save_image> 
# --------------------------------------------

