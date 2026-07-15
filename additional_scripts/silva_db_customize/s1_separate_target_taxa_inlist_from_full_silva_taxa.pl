#!/usr/bin/perl -w
use warnings;
#Usage: perl .pl <IN target.txt> <IN source>

open II, "<$ARGV[0]";
open OU1, ">./silva_inlist_tax.tsv";
open OU2, ">./silva_outlist_tax.tsv";
while (<II>) {
	chomp;
	s/\r//;
	$targetid=(split /\s/,$_)[0]; #<------target

open IN, "<$ARGV[1]";
while (<IN>) {
	chomp;
	s/\r//;
	if (m/$targetid/) {
	print OU1 "$_\n";
	}else{
		print OU2 "$_\n";
	}
}
close IN;
}
close II;
close OU1;
close OU2;