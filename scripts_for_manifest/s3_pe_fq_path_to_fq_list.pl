#!/usr/bin/perl -w
use warnings;
#Usage: perl .pl <IN file> > <OU file>
#input file list CANNOT! contain any single-end file
#the last blank row needs to be deleted


open II, "<$ARGV[0]";
while (<II>) {
	chomp;
	$odd = $_;
	$str1 = (split /\//,$_)[-1];
	$str = (split /\./,$str1)[0];
	print "$str\t";
	print "$odd\t";
	$even = <II>;
	chomp($even);
	print "$even\n";
	}

close II;
