#! /usr/bin/perl
use Juman;
$juman = new Juman;
$result = $juman->analysis( "時間は止まらないが、生き続けなければいけない" );
print $result->all();

