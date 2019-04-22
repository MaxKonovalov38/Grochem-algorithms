#!/usr/bin/perl -w
# Сортировка массива по возврастанию
use strict;
use feature "say";

my @numbers = (5, 3, 6, 2, 10);

sub findSmallest {
    my $num = $numbers[0];
    my $smallest_index = 0;

    for (my $i=1; $i < (scalar(@numbers)); $i++) {
        if ($numbers[$i] < $num) {
            $num = $numbers[$i];
            $smallest_index = $i;
        } 
    }
    return $smallest_index;
}
say "Index min num: " .  &findSmallest(@numbers);

my @result = sort {$a <=> $b} @numbers;
say "Sort arr nums ->:" . join(" ", @result);