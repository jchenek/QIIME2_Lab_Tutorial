#!/usr/bin/perl -w
use warnings;
#Usage: perl extract_target_simple_from_txt.pl <IN file> > <OU filted_file>


open II, "<$ARGV[0]";
while (<II>) {
	chomp;
	if (m/.gz/) { #<------adjust to get target
#	print "$&\n";
#	$tar = $&;
#	s/#=GF AC   //;
	print "$_\n";
	}elsif(m/.fq/) { #<------adjust to get target
#	print "$&\n";
#	$tar = $&;
#	s/#=GF AC   //;
	print "$_\n";
	}
}
close II;