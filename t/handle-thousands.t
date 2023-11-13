use strict;
use warnings;
use FindBin qw($Bin);
use lib "$Bin/..";
require "number-to-word.pl";
use Test::More tests => 2;

# Assuming number_to_words has been defined here or in a module

# Test for numbers in thousands without hundreds, tens, or units
subtest 'thousands without sub-units' => sub {
    plan tests => 3;
    is(number_to_words(10_000), "ten thousand", "number_to_words(10_000) should return 'ten thousand'");
    is(number_to_words(20_000), "twenty thousand", "number_to_words(20_000) should return 'twenty thousand'");
    is(number_to_words(100_000), "one hundred thousand", "number_to_words(100_000) should return 'one hundred thousand'");
};

subtest 'hundreds without sub-units' => sub {
    plan tests => 4;
    is(number_to_words(100), "one hundred", "number_to_words(100) should return 'one hundred'");
    is(number_to_words(200), "two hundred", "number_to_words(200) should return 'two hundred'");
    is(number_to_words(300), "three hundred", "number_to_words(300) should return 'three hundred'");
    is(number_to_words(400), "four hundred", "number_to_words(400) should return 'four hundred'");
};
