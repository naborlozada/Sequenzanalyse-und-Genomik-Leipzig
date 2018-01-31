#!/usr/bin/perl

=head
 --------------------------------------------------------------------------------------------------------------
 Alejandro Nabor Lozada Chavez
 n.lozada@hhu.de
 
 This perl script attemps to recover all GIs number from the fasta sequence file after the
 filtering of redundancy (process that reduced the initial number of sequences from the BLAST hits).
 
    === Why recover something that is already stored in my table file called "myTAXA_info.txt"? ===
 
 Consider the following case: your initial number of sequences was 500 BLAST hits, then you removed some
 by a specific criteria (e.g. redundancy). After this step, your final alignment has only 150 sequences,
 350 sequences less than the initial one. If you only want the annotation of the 150, and not the 500, now
 you should ask yourself the followig question: What am I going to do to handle the 500 and obtain only the
  final 150 GI numbers stored in my final fasta file?
 This script provides a simple solution to this problem. You may find many other solutions quite probably.
 
 USAGE:
        perl retrieve_GIs_TAXA_for_myTree_annotation.pl > myRecovered_TAXA_info.gene_annotation.txt
 --------------------------------------------------------------------------------------------------------------
=cut


use strict;
use warnings;


# open file 1
open FASTA, "Msa_ATP_HGT_dead.blast_hits.GI_headers.nr90.ginsi_aln_edited.aligned_v2.fasta" or die "CANNOt open the FASTA file\n";
my @fasta = ();
@fasta = <FASTA>;
close FASTA;

# open file 2
open HEADERS, "myTAXA_info.txt" or die "CANNOT open my NEW FASTA HEADERS file\n";
my @headers = ();
@headers = <HEADERS>;
close HEADERS;


my %get_new_header_names = ();
my %fasta_join_lines     = ();

# Read taxa info and store them in hashes:
foreach my $taxa_info (@headers) {
    chomp $taxa_info;
    if ($taxa_info!~/^ACCESSION.+/) {
        my @array = split /\t/, $taxa_info;
        my $GI    = $array[1];
        #print "$GI\t$taxa_info\n";
        $get_new_header_names{$GI} = $taxa_info;
    }
}




# Read fasta headers (GI numbers) and store them in hashes:
my $original_header = "";

foreach my $fasta_line (@fasta) {
    chomp $fasta_line;
    #get headers:
    if ($fasta_line=~/^>(.+)/)    {	   $original_header =$1;         }
    # get sequence:
    else {	my $seq = $fasta_line;	   $fasta_join_lines{$original_header} .= $seq;     }
}



# Find taxa info by comparing both hashes:
for my $header2match (keys %get_new_header_names) {
    my $new_header = "";
    
    if ( $fasta_join_lines{$header2match} ) {
        $new_header = $get_new_header_names{$header2match};
        $new_header =~ s/\t$//gis;
        print "$header2match\t=>\t$new_header\n";
    }
    else {
        # here are those GI which are not in the final fasta file:
        #print "$header2match\t=>\tWARNING: NO_MATCH\n";
    }
}


