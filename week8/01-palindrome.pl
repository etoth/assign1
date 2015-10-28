#!/usr/bin/env perl
use strict;
use warnings;
my $text = join ('', @ARGV);
$text =~ s/\p{Punct}//; #remove punctuation
$text =~ s/^\s+//i;
$text =~ s/\s+$//i;
$text =~ tr/A-Z/a-z/;
my $rtext = reverse $text;
if ($text eq $rtext) {
	print "yes! \n";
}
	else {
		print "no! \n";
	}
