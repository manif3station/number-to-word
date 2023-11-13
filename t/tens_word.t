use strict;
use warnings;
use FindBin qw($Bin);
use lib "$Bin/..";
require "number-to-word.pl";
use Test::More tests => 10;

is(tens_word(0), "", "tens_word(0) should return an empty string");
is(tens_word(1), "ten", "tens_word(1) should return 'ten'");
is(tens_word(2), "twenty", "tens_word(2) should return 'twenty'");
is(tens_word(3), "thirty", "tens_word(3) should return 'thirty'");
is(tens_word(4), "forty", "tens_word(4) should return 'forty'");
is(tens_word(5), "fifty", "tens_word(5) should return 'fifty'");
is(tens_word(6), "sixty", "tens_word(6) should return 'sixty'");
is(tens_word(7), "seventy", "tens_word(7) should return 'seventy'");
is(tens_word(8), "eighty", "tens_word(8) should return 'eighty'");
is(tens_word(9), "ninety", "tens_word(9) should return 'ninety'");
