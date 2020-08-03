#!/usr/bin/perl
# Функция расчета факториала
use strict;
use warnings;

sub fact {
	my $n = shift;

	if ($n == 1) {
		return 1;
	}
	else {
		return ( $n * fact($n - 1) );
	}
}

print( fact(5) );