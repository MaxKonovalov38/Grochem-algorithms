#!/usr/bin/perl
# Стек
use strict;
use warnings;

sub greet {
	my $name = shift;
	print('hello, ', $name, "!\n");
	greet2($name);
	print("getting ready to say bye...\n");
	bye();
}

sub greet2 {
	my $name = shift;
	print('how are you, ', $name, "?\n");
}

sub bye {
	print("ok bye!\n");
}

greet('max');