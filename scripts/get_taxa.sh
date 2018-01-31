# ------------------------------------------------------------------------------------------------------------------------- #
# = Alejandro Nabor Lozada Chavez =                                                                                         #
#   n.lozada@hhu.de                                                                                                         #
#                                                                                                                           #
#   This code was release in the "Sequenzanalyse und Genomik course" in the University of Leipzig.                          #
#                                                                                                                           #
# The script using sed, grep and perl to sort and handle information obtained from NCBI via E-Utilities tools.              #
# E-Utilities book:  https://www.ncbi.nlm.nih.gov/books/NBK25501/                                                           #
#                    https://www.ncbi.nlm.nih.gov/books/NBK25499/#chapter4.General_Usage_Guidelines                         #
#                                                                                                                           #
# Description:                                                                                                              #
# This script makes a loop to call (from a https link) all info from a specific ACEESION number and get some specific info: #
# 1) GI number, 2) species names, and 3) full taxonomic classification.                                                     #
# More info can be obtained, but has to defined in the code. Also, among mutliple limitation in this searching              #
# is the fact that all info is obtained only for sequences recorded in NCBI.                                                #
#                                                                                                                           #
# Filling required all gene IDs: Introduce all gene names of from a source (e.g. tree from ncbi) to get the taxonomy info   #
# of the genes in the tree or any source you require. Gene IDs most be separated by "one space".                            #
# This script is only a test and require more detailed parsing code.                                                        #
#                                                                                                                           #
#                                                                                                                           #
# EXECUTABLE FILE:                                                                                                          #
#   Change the file persmission typing in the commnad line (in your working directory "phylogenetics"):                     #
#           chmod 0700 get_taxa.sh                                                                                          #
#                                                                                                                           #
# Run script: ./get_taxa.sh  >  myTAXA_info.txt                                                                             #
#                                                                                                                           #
#  ---------------------------                                                                                              #
#  WARNINGS:                                                                                                                #
# Why this program is not working?                                                                                          #
#   - There is something wrong with the fasta headers (see below).                                                          #
#   - There is one or more fasta annotation not detected in NCBI.                                                           #
#   - There is something wrong in the code...                                                                               #
#   - something was deleted unpurpose...                                                                                    #
#                                                                                                                           #
#  May be you will find these conflicting "fasta headers" annotation (see explanation below).                               #
#  pdb|1VI6|A   change to:  1VI6  => how did you know if this is the correct annotation? search 'pdb|1VI6|A' in NCBI)       #
#  pdb|1VI5|A   change to:  1VI5                                                                                            #
#  pir||F64422  change to:  1VI5                                                                                            #
# ------------------------------------------------------------------------------------------------------------------------- #

echo -n -e "ACCESSION\tGI_NUMBER\tORGANISM\tTAXONOMY\n"

# PASTE your ACCESSION number list (point 6) from your pipe-line output (example of ACCESSION numbers below):

for ACC in WP_011022407.1 WP_048171318.1 WP_054297937.1 WP_048166655.1 AKB44289.1 AKB47776.1 AKB61750.1 WP_048123909.1 WP_065759780.1 WP_036159500.1 WP_100943204.1 WP_048044556.1 WP_013964255.1 AAC38054.1 WP_090286126.1 AKB18178.1 AKB74398.1 KXS32772.1 AAZ71988.1 WP_099991851.1 WP_009206514.1 WP_099407052.1 PKO94270.1 WP_097067877.1 WP_013580877.1 WP_007013961.1 AKB81155.1 AKB78604.1 WP_046009447.1 WP_048122723.1 OQX05453.1 OGA14308.1 WP_048129064.1 WP_067746859.1 WP_044414199.1 WP_021016003.1 WP_090877347.1 WP_100644548.1 OGV81107.1 WP_018914755.1 WP_048103438.1 WP_022954344.1 WP_014110327.1 OQX10841.1 WP_048109965.1 WP_072842229.1 OYV47527.1 WP_024024962.1 WP_074632515.1 WP_012502310.1 WP_012069662.1 WP_007625850.1 WP_048143402.1 WP_041514322.1 WP_092621448.1 WP_092788142.1 OIO66967.1 WP_095645235.1 ODV09863.1 OIN92610.1 WP_100635719.1 PIR10021.1 PIP01865.1 WP_072767684.1 WP_087447338.1 WP_067217971.1 WP_102037628.1 WP_083359038.1 SBT05732.1 OGQ97739.1 WP_010552606.1 WP_091686382.1 WP_034433224.1 WP_092527749.1 OYY60673.1 WP_020703486.1 OJY12133.1 PKL45909.1 WP_091137060.1 OGB86235.1 EKD39797.1 WP_025039991.1 WP_011638498.1 WP_074793944.1 WP_098105923.1 OQZ05298.1 OIO67550.1 WP_090958115.1 WP_015403243.1 WP_020680877.1 WP_012505473.1 WP_088619989.1 OWK37359.1 WP_015245542.1 WP_090827654.1 OWK39778.1 WP_011463471.1 WP_020476470.1 PKL40184.1 WP_088257293.1 WP_088256633.1 OGS33331.1 WP_004176664.1 WP_010562891.1 WP_101206739.1 KGO35570.1 PIS10995.1 PKO63783.1 WP_035578896.1 WP_092192707.1 WP_028669906.1 WP_101088766.1

    do
    echo -n -e "$ACC\t"
    curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=protein&id=${ACC}&rettype=gp&retmode=xml" |\

    # Get specific information:
    grep -E 'GBSeqid>gi|GBSeq_organism|GBSeq_taxonomy' |\

    # parsing lines:
    sed -E 's/\<GBSeqid\>//g' |\
    sed -E 's/\<\/GBSeqid\>//g' |\
    sed -E 's/\<GBSeq_organism\>//g' |\
    sed -E 's/\<\/GBSeq_organism\>//g' |\
    sed -E 's/\<GBSeq_taxonomy\>//g' |\
    sed -E 's/\<\/GBSeq_taxonomy\>//g' |\
    sed -E 's/\gi\|//g' |\
    sed -E 's/\gi\|//g' |\
    sed -E 's/ /./g' |\

    # dealing with spaces and other weird characters...
    perl -pe 's/\;\./\t/g' |\
    perl -pe 's/ /#/g' |\
    perl -pe 's/^\.+//g' |\
    perl -pe 's/\./_/g' |\
    perl -pe 's/\///g' |\
    perl -pe 's/\<//g' |\
    perl -pe 's/\>//g' |\
    perl -pe 's/\;//g' |\
    perl -pe 's/\(//g' |\
    perl -pe 's/\)//g' |\
    perl -pe 's/\=//g' |\
    perl -pe 's/\,//g' |\
    perl -pe 's/\#//g' |\

    # Add more strange characters or try to remove all non-alpha-numberic characters (Warning #2)
    # perl -pe 's/[^a-zA-Z0-9_\t]//g' |\
    # ...
    # ...

    tr '\n' '\t'
    # additional parsing lines (if you want...)
    # ...
    # ...

    # print final result:
    echo
done



# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = #
#                                                                                                                           #
# Additional NOTES:                                                                                                         #
#                                                                                                                           #
# WARNING SECTION:                                                                                                          #
#   * ABOUT conflicting "fasta headers": gene annotations sometimes are complex, in some cases they are based on other      #
#           other databases, e.g. Protein Data Bank (pdf) or Protein Informaiton Resource (pir). These three noise          #
#           annotations have this problem. HINT: If you are curious, go to NCBI (https://www.ncbi.nlm.nih.gov/protein/)     #
#           and paste any of these three examples as they are and see the (ACCESSION) annotation.                           #
#                                                                                                                           #
#   * Warning 2: remove multiple strange characters can save too time and code lines; however, you have to be careful using #
#           a regular expresssion to reach that point, for instances, it can remove key important information. Here are     #
#           some examples of how-to use this:                                                                               #
#   https://stackoverflow.com/questions/31625634/perl-regex-remove-all-characters-except-alphanumeric-characters-and-comma  #
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = #



