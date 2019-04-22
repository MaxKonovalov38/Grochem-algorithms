#!/usr/bin/perl -w
# Метод бинарного поиска
use strict;
use feature "say";

my @list = (1, 3, 5, 7, 9);

sub  binary_search{
    my($n, @array) = @_;
    my $low = 0;
    my $hight = scalar(@array)-1;
    
    while ($low <= $hight) {
        my $mid = ($low + $hight) // 2;
        my $guess = $array[int($mid)];
        if ($guess == $n) {
            return $mid;
        } elsif ($guess > $n) {
            $hight = $mid - 1;
        } else {
            $low = $mid + 1;
        }
    }
    return "Нет такого значения в списке!!!";
}

say binary_search(3, @list);
say binary_search(1, @list);
say binary_search(-1, @list);
say binary_search(5, @list);
