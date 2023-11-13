use strict;
use FindBin qw($Bin);
use lib "$Bin/..";
require "number-to-word.pl";
use Test::More tests => 10;

is(ones_word(0), "", "ones_word(0) should return an empty string");
is(ones_word(1), "one", "ones_word(1) should return 'one'");
is(ones_word(2), "two", "ones_word(2) should return 'two'");
is(ones_word(3), "three", "ones_word(3) should return 'three'");
is(ones_word(4), "four", "ones_word(4) should return 'four'");
is(ones_word(5), "five", "ones_word(5) should return 'five'");
is(ones_word(6), "six", "ones_word(6) should return 'six'");
is(ones_word(7), "seven", "ones_word(7) should return 'seven'");
is(ones_word(8), "eight", "ones_word(8) should return 'eight'");
is(ones_word(9), "nine", "ones_word(9) should return 'nine'");
