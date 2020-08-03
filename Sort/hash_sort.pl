#!/usr/bin/perl -w
# Сортировка выбором
use strict;
use feature "say";

my %check_mus = (
	"radiohead" => 1200000,     #     1_200_000
	"sum_41" => 970000,         #       970_000
	"blink_182" => 350000,      #       350_000
	"metallica" => 12000334,    #    12_000_334
	"the_bitls" => 9988000000,  # 9_988_000_000
	"papa_roach" => 1430000,    #     1_430_000
	"slipknot" => 666000,       #       666_000
	"linkin_park" => 256000,    #     1_256_000
	);

my @sort_win_mus = reverse sort {$check_mus{$a} <=> $check_mus{$b}} keys %check_mus;
say "Top artist radio:";
foreach (@sort_win_mus) {
	say "Artist: ". $_ . " =>Top: ". $check_mus{$_};
}