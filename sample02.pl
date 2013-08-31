#!/usr/bin/perl

use strict;
use Juman;

# my $str = "この文を形態素解析して下さい。";
#
#INPUT FILE
open(SRC,"./File/sample.txt");
print "見出し\t原形\t品詞\n\n";

while(<SRC>){
chomp;
my $str = $_;
my $juman = Juman->new;
my $result = $juman->analysis( $str );
foreach my $node ( $result->mrph() ) {
    my $midasi = $node->midasi();
#    $midasi =~ s/^\\//;
    my $hinsi = $node->hinsi();  
    my $hinsi_id = $node->hinsi_id();
	my $genkei = $node->genkei();
 #   my $yomi = $node->yomi() if ( 1 < $hinsi_id && $hinsi_id < 15 );
 #   print $midasi, "\t", $yomi, "\t", $hinsi, "\n";
	print "$midasi\t$genkei\t$hinsi\n";
}
print "\n";

}




