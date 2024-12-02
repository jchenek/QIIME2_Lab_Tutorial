#!/usr/bin/perl -w
use warnings;
#Usage: 
#perl .pl
#this script will output all files and path in 'all_file_list.txt'

$sys = "\/\*";
$cjw = system("ls -d \"\$PWD\"$sys > all_file_list.txt"); #if 'system' runs successfully, $cjw == 0 else ==512
print "touch all files from $sys\n";
while($cjw == 0){
	$sys = "$sys\/\*";
	$cjw = system("ls -d \"\$PWD\"$sys >> all_file_list.txt");
	if($cjw == 0){print "touch all files from $sys\n";}
	if($cjw != 0){print "program stops at $sys\n";}
}
print "pls check 'all_file_list.txt'\n";


