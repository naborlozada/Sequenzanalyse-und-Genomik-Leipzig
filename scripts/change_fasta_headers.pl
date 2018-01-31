#!/usr/bin/perl

=head
 --------------------------------------------------------------------------------------------------------------
 Alejandro Nabor Lozada Chavez
 n.lozada@hhu.de
 
 Perl script that replaces the previous fasta annotation (ACCESSION numbers) with the current ones (GI numbers).
 
 The script needs only two files, a fasta file with ACCESSION annotation and a table with the corresponding
 ACCESSION ===> GI number designation. This info can be foudn in the file "MY_TAXA_TABLE.txt" obtained previously
 with other program provided here: get_taxa.sh
 
 REPLACE the -FASTA- and -HEADERS- file names used here for with your file names.
 
 USAGE:
        perl change_fasta_headers.pl > MY_NEW_FASTA_FILE.fasta

 --------------------------------------------------------------------------------------------------------------
=cut


use strict;
use warnings;


#
open FASTA, "BLAST_results_sequences.new_headers.fasta" or die "CANNOt open the FASTA file\n";
my @fasta = ();
@fasta = <FASTA>;
close FASTA;


#
open HEADERS, "MY_TAXA_TABLE.txt" or die "CANNOT open my NEW FASTA HEADERS file\n";
my @headers = ();
@headers = <HEADERS>;
close HEADERS;


my %get_new_header_names = ();
my %fasta_join_lines     = ();


foreach my $header (@headers) {
    chomp $header;
    if ($header!~/^ACCESSION.+/) {
        my @array = split /\t/, $header;

        my $domain    = $array[4];
        my $ACCESSION = $array[0];
        my $GI        = $array[1];
        
        $get_new_header_names{$ACCESSION} = $GI;
    }
}



my $original_header = "";

foreach my $fasta_line (@fasta) {
    chomp $fasta_line;
    
    #get headers:
    if ($fasta_line=~/^>(.+)/)    {	   $original_header =$1;         }
    # get sequence:
    else {	my $seq = $fasta_line;	   $fasta_join_lines{$original_header} .= $seq;     }
}



for my $header2match (keys %fasta_join_lines) {
    my $new_header = "";
    
    if ( $get_new_header_names{$header2match} ) {
        $new_header = $get_new_header_names{$header2match};
        print ">$new_header\n$fasta_join_lines{$header2match}\n";
    }
    else {
        #print "$header2match\tNO_MATCH\tNO_MATCH\n";
    }
}




