#!/usr/bin/perl -w
use warnings;
#Usage: perl .pl <IN silva_inlist_tax.tsv> <IN original_fa_file>

%hash=();
open II, "<$ARGV[0]";
while (<II>) {
	chomp;
	s/\r//;
	$id2=(split /\s+/,$_)[0]; #<------target contig
	$hash{$id2}= 1;
	}
close II;

open IN, "<$ARGV[1]";
open OU1, ">silva_inlist_seq.fa";
open OU2, ">silva_outlist_seq.fa";
$/=">";<IN>;
while (<IN>) {
	chomp;
	s/\r//;
	$id=(split /\s+/,$_)[0];
	$seq=(split /\s+/,$_)[1]; #<------adjust to get seq
	#$id=~s/\>//;
	if ($hash{$id}) {
	print OU1 ">$id\n$seq\n";
	}else{
		print OU2 ">$id\n$seq\n";
	}
}
close IN;
