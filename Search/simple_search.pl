#!/usr/bin/perl -w
# Метод простого поиска
use strict;
use feature "say";

my @nums = (54..666);
my $res = &simple_search(667, @nums);

sub simple_search {
    my($i, @array) = @_;
    foreach (0 .. $#array) {
        if ($i == $array[$_]) {
            return $_;
        }
    }
    return "Нет такого значения в списке!!!";
}

say "Index num: " . $res;