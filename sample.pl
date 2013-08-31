#! /usr/bin/perl

use Juman;

# INPUT FILE
open(SRC,"./File/sample.txt");

# usage JUMAN
$juman = new Juman;

while(<SRC>){
	chomp;
	$result = $juman->analysis($_);
	print $result->all();

}

close(SRC);
