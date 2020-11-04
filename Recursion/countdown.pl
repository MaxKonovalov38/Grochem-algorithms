#!/usr/bin/perl
use strict;
use warnings;

sub countdown {
	my $i = shift;
	print $i, "\n";

	if ( $i <= 0 ) {
		return;
	}
	else {
		countdown($i-1);
	}
}

print( countdown(10) );