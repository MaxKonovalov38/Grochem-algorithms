#!/usr/bin/perl
# Функция расчета факториала
use strict;
use warnings;
use feature "state";

sub factorial {
	state $i;
	return ($i < 2) ? 1 : $i * &factorial($i-1);
}

sub main {
	my $i = 5;

	while ($i = 1) {
		print "Factorial: ". &factorial($i) . "\n";
	}

}

main();