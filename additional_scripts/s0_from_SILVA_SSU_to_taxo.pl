#!usr/bin/perl
use warnings;
#usage: perl extract_contig_ID_from_fa.pl contigs.fa > contig_ID.txt

open IN, "$ARGV[0]";

while(<IN>){
	chomp;
	if(m/>/){
	s/>//;
	$fullname = $_;
	$ID = (split / /,$fullname)[0];
	$taxo = (split / /,$fullname)[1];
	print "$ID\t$taxo\n";
	}
}
