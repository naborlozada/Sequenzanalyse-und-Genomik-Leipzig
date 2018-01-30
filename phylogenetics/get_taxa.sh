# ------------------------------------------------------------------------------------------------------------------------- #
# USAGE instructions and indications:                                                                                       #
# This script makes a loop to call (from a https link) all info from a specific ACEESION number and get all the info        #
# related to. However, here the script get specific lines related to the taxonomic classification.                          #
# Filling required all gene IDs: Introduce all gene names of from a source (e.g. tree from ncbi) to get the taxonomy info   #
# of the genes in the tree or any source you require. Gene IDs most be separated by "one space".                            #
# This script is only a test and require more detailed parsing code.                                                        #
#                                                                                                                           #
#                                                                                                                           #
# EXECUTABLE FILE:                                                                                                          #
#   Change the file persmission typing in the commnad line (in your working directory "phylogenetics"):                     #
#           chmod 0700 get_taxa.sh                                                                                          #
#                                                                                                                           #
# Run script: ./get_Taxonomy_from_TaxIDs.sh                                                                                 #
#                                                                                                                           #
#                                                                                                                           #
#  WARNINGS:                                                                                                                #
# Why this program is not working?                                                                                          #
#   - There is something wrong with the fasta headers (see below).                                                          #
#   - There is one or more fasta annotation not detected in NCBI.                                                           #
#   - There is something wrong in the code...                                                                               #
#   - something was deleted unpurpose...                                                                                    #
#                                                                                                                           #
#  May be you will find these conflicting "fasta headers" annotation (see explanation below).                               #
#  pdb|1VI6|A   change to:  1VI6                                                                                            #
#  pdb|1VI5|A   change to:  1VI5                                                                                            #
#  pir||F64422  change to:  1VI5                                                                                            #
# ------------------------------------------------------------------------------------------------------------------------- #

echo -n -e "ACCESSION\tGI_NUMBER\tORGANISM\tTAXONOMY\n"

# PASTE your ACCESSION number list (point 6) from your pipe-line output:

for ACC in WP_011022407.1 WP_048171318.1 WP_054297937.1 WP_048166655.1 AKB44289.1 AKB47776.1 AKB61750.1 WP_048123909.1 WP_065759780.1 WP_036159500.1 WP_100943204.1 WP_048044556.1 WP_013964255.1 AAC38054.1 WP_090286126.1 AKB18178.1 AKB74398.1 KXS32772.1 AAZ71988.1 WP_099991851.1 WP_009206514.1 WP_099407052.1 PKO94270.1 WP_097067877.1 WP_013580877.1 WP_007013961.1 AKB81155.1 AKB78604.1 WP_046009447.1 WP_048122723.1 OQX05453.1 OGA14308.1 WP_048129064.1 WP_067746859.1 WP_044414199.1 WP_021016003.1 WP_090877347.1 WP_100644548.1 OGV81107.1 WP_018914755.1 WP_048103438.1 WP_022954344.1 WP_014110327.1 OQX10841.1 WP_048109965.1 WP_072842229.1 OYV47527.1 WP_024024962.1 WP_074632515.1 WP_012502310.1 WP_012069662.1 WP_007625850.1 WP_048143402.1 WP_041514322.1 WP_092621448.1 WP_092788142.1 OIO66967.1 WP_095645235.1 ODV09863.1 OIN92610.1 WP_100635719.1 PIR10021.1 PIP01865.1 WP_072767684.1 WP_087447338.1 WP_067217971.1 WP_102037628.1 WP_083359038.1 SBT05732.1 OGQ97739.1 WP_010552606.1 WP_091686382.1 WP_034433224.1 WP_092527749.1 OYY60673.1 WP_020703486.1 OJY12133.1 PKL45909.1 WP_091137060.1 OGB86235.1 EKD39797.1 WP_025039991.1 WP_011638498.1 WP_074793944.1 WP_098105923.1 OQZ05298.1 OIO67550.1 WP_090958115.1 WP_015403243.1 WP_020680877.1 WP_012505473.1 WP_088619989.1 OWK37359.1 WP_015245542.1 WP_090827654.1 OWK39778.1 WP_011463471.1 WP_020476470.1 PKL40184.1 WP_088257293.1 WP_088256633.1 OGS33331.1 WP_004176664.1 WP_010562891.1 WP_101206739.1 KGO35570.1 PIS10995.1 PKO63783.1 WP_035578896.1 WP_092192707.1 WP_028669906.1 WP_101088766.1 WP_069517232.1 WP_075560687.1 WP_075569763.1 WP_046555180.1 GBE53826.1 PIR19597.1 WP_102124084.1 WP_006992831.1 OGA98028.1 WP_054136990.1 WP_011380977.1 WP_013783888.1 SEG88763.1 OGA79656.1 WP_018608039.1 OYW77489.1 PCI48508.1 WP_029525774.1 WP_045570397.1 WP_101521683.1 WP_027995030.1 WP_047813932.1 WP_013995204.1 CAD78172.1 WP_073216490.1 WP_054649244.1 WP_008654312.1 WP_029898934.1 WP_076454363.1 WP_020889595.1 WP_028375411.1 SFI32155.1 WP_090241689.1 WP_008938011.1 WP_011357802.1 WP_020606061.1 WP_026814144.1 WP_006964572.1 WP_007328511.1 OJW56467.1 WP_020720037.1 WP_091618672.1 PKN61954.1 WP_002644696.1 WP_007221725.1 OPL12497.1 WP_090333736.1 ADW17432.1 PKO08338.1 WP_093405772.1 WP_028582373.1 WP_085828650.1 WP_066729169.1 PIQ29267.1 WP_039354477.1 WP_018124063.1 WP_070968186.1 WP_020200947.1 WP_095736864.1 KHE92985.1 WP_092440705.1 KXJ40037.1 WP_092002893.1 WP_009094048.1 WP_090661541.1 WP_099826945.1 WP_090633502.1 WP_101198568.1 PLX93280.1 ETX00015.1 WP_021101384.1 ODS84144.1 KJS18418.1 WP_018063331.1 WP_090697924.1 WP_012177118.1 WP_073373117.1 OGV17798.1 WP_017258830.1 WP_005998476.1 WP_091868454.1 ETW98249.1 WP_005986630.1 WP_015773162.1 WP_100917399.1 PKN33376.1 WP_058335321.1 WP_093286520.1 WP_097460634.1 WP_020161365.1 WP_028321101.1 WP_077026176.1 KPJ86612.1 WP_013032885.1 WP_101036886.1 OIP74704.1 BBA32693.1 WP_022948308.1 WP_020503068.1 WP_089937028.1 OGB51767.1 WP_016193346.1 GAX61516.1 WP_019598117.1 WP_043870771.1 WP_006521551.1 WP_050524695.1 WP_089722274.1 PHS61574.1 WP_011801716.1 WP_047028518.1 OEU53415.1 WP_094346123.1 PIQ51651.1 WP_017660431.1 WP_036809362.1 WP_054695064.1 WP_068359528.1 EKD68320.1 WP_075351392.1 OUS19648.1 WP_097300060.1 WP_019864299.1 WP_092059541.1 WP_013551709.1 WP_011419011.1 WP_095723723.1 WP_066331020.1 WP_036129473.1 OPL09563.1 WP_073592108.1 WP_023064188.1 WP_094022881.1 OIQ32548.1 OEU46706.1 WP_085891693.1 WP_074640240.1 WP_078685341.1 WP_006512127.1 WP_092840901.1 WP_099104273.1 WP_066977509.1 WP_015171891.1 WP_096894909.1 WP_009571222.1 WP_090030651.1 WP_083099200.1 WP_028835810.1 WP_014150151.1 WP_054032520.1 WP_033102680.1 WP_055682727.1 WP_058388645.1 PKM37556.1 WP_009151150.1 WP_017841783.1 WP_073144546.1 WP_068628747.1 WP_093882436.1 WP_027842635.1 WP_002768905.1 KJS03587.1 WP_010476590.1 WP_023385844.1 WP_073600339.1 WP_008228765.1 WP_091231061.1 WP_098073767.1 WP_093026722.1 WP_086540413.1 WP_099326714.1 WP_006196574.1 WP_028829599.1 WP_073199405.1 WP_091529380.1 WP_020403293.1 AOY56798.1 WP_020876464.1 WP_082803642.1 WP_102206522.1 WP_019509377.1 KQC15795.1 PKN74585.1 WP_045464753.1 PKN59995.1 GAL85739.1 WP_102180462.1 WP_027264019.1 WP_063718552.1 WP_101535517.1 WP_073036354.1 WP_011768884.1 WP_072795083.1 WP_011635038.1 WP_013817213.1 WP_073066476.1 PKN69263.1 WP_062437077.1 WP_012305626.1 WP_068332147.1 WP_071263837.1 WP_066921830.1 PKN04908.1 WP_015337365.1 WP_068342750.1 WP_021250710.1 OPL13242.1 WP_022990721.1 CDH43748.1 WP_092892401.1 WP_093917374.1 WP_015852105.1 WP_074455696.1 WP_020002253.1 WP_096782820.1 WP_092163140.1 WP_071799737.1 WP_085849537.1 WP_066608014.1 WP_097806742.1 KPK02180.1 WP_031485880.1 WP_011342782.1 PCI84788.1 WP_022965727.1 WP_050527833.1 WP_054340225.1 PCJ76113.1 PKL92632.1 WP_043959324.1 WP_076531983.1 PHQ93661.1 KJS30678.1 OEU65205.1 CCZ22466.1 WP_006424085.1 WP_088826238.1 BAK19936.1 OGP67504.1 WP_015226543.1 WP_040200419.1 WP_004070523.1 ALP53871.1 WP_014579110.1 ODT71731.1 WP_075586886.1 WP_048497444.1 WP_092058891.1 WP_080456809.1 WP_101069006.1 WP_008278493.1 WP_087591242.1 WP_005978638.1 WP_098420008.1 WP_099618003.1 WP_007349152.1 WP_048383679.1 WP_038002763.1 OHB31694.1 WP_039725335.1 WP_035521332.1 ODT75609.1 OEU74979.1 WP_064229208.1 OKY75062.1 WP_071942312.1 WP_072283929.1 KPQ16151.1 WP_026757020.1 KXS53092.1 KXS53032.1 WP_098553567.1 WP_040184388.1 OQY40523.1 WP_087593865.1 WP_093120524.1 WP_017324531.1 WP_074219283.1 OEU53612.1 OQX62190.1 PIS01146.1 KQC10763.1 ESP62575.1 WP_035030735.1 WP_073060023.1 SEQ59760.1 WP_089037529.1 WP_090270306.1 KIG16824.1 KFO67304.1 WP_069859680.1 WP_087650347.1 WP_015903232.1 WP_087670839.1 WP_009506887.1 WP_023071740.1 WP_065271941.1 WP_006512841.1 SHE89729.1 WP_005372824.1 WP_084399052.1 PKN06516.1 PKN06409.1 WP_024296723.1 WP_006457996.1 KXJ39857.1 WP_013817547.1 ACJ66834.1 WP_066776612.1 WP_031434491.1 PNE10120.1 WP_054762023.1 OGK99979.1 KIE17342.1 WP_041106786.1 WP_064042502.1 WP_036637891.1 WP_006869773.1 WP_010652840.1 KYF90583.1 WP_028028450.1 OJY04832.1 PIV74289.1 OJX09168.1 ABI15718.1 WP_085433242.1 WP_022980745.1 WP_022948560.1 WP_072286697.1 WP_028219903.1 WP_002724764.1 EXI90090.1 OJY53930.1 WP_054935033.1 WP_028095267.1 WP_045097765.1 WP_091793534.1 WP_054037454.1 WP_045096196.1 WP_058479328.1 WP_034990781.1 WP_088719174.1 WP_028385223.1 KPK45978.1 WP_091512067.1 WP_012427417.1 KYF74489.1 WP_017774099.1 WP_091384756.1 WP_024873290.1 WP_064036366.1 WP_014087532.1 WP_011807573.1 WP_007181539.1 WP_066485967.1 WP_004187193.1 WP_080523184.1 WP_069168085.1 WP_067534020.1 WP_073270579.1 OIP35939.1 SOC82393.1 WP_028380582.1 WP_013339327.1 WP_068765167.1 WP_078539907.1 WP_075776345.1 WP_078519861.1 OZB57997.1 WP_014843926.1 WP_031359402.1 WP_073632289.1 WP_046564982.1 KPK01142.1 WP_069947899.1 WP_065270496.1 WP_006050733.1 WP_086909449.1 OJU23814.1 WP_035703862.1 WP_063670868.1 WP_011493232.1 WP_047213835.1 WP_038715603.1 CBX31021.1 WP_019576657.1 WP_066707659.1 WP_027474672.1

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


