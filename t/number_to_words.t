use strict;
use warnings;
use FindBin qw($Bin);
use lib "$Bin/..";
require "number-to-word.pl";
use Test::More tests => 6;

is(number_to_words(0), "zero", "number_to_words(0) should return 'zero'");
is(number_to_words(11), "eleven", "number_to_words(11) should return 'eleven'");
is(number_to_words(101), "one hundred and one", "number_to_words(101) should return 'one hundred and one'");
is(number_to_words(1000), "one thousand", "number_to_words(1000) should return 'one thousand'");
is(number_to_words(1234), "one thousand, two hundred and thirty four", "number_to_words(1234) should return 'one thousand, two hundred and thirty four'");
is(number_to_words(2222), "two thousand, two hundred and twenty two", "number_to_words(2222) should return 'two thousand, two hundred and twenty two'");
