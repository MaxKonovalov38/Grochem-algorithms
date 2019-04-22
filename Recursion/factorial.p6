#!/usr/bin/perl6
# Функция расчета факториала

sub factorial($a) {
	if ($a == 1) {
		return 1;
	} else {
		return $a * factorial($a - 1);
	}
}

say factorial(5);