use strict;
use warnings;
use FindBin qw($Bin);
use lib "$Bin/..";
require "number-to-word.pl";
use Test::More tests => 10;

is(teens_word(10), "ten", "teens_word(10) should return 'ten'");
is(teens_word(11), "eleven", "teens_word(11) should return 'eleven'");
is(teens_word(12), "twelve", "teens_word(12) should return 'twelve'");
is(teens_word(13), "thirteen", "teens_word(13) should return 'thirteen'");
is(teens_word(14), "fourteen", "teens_word(14) should return 'fourteen'");
is(teens_word(15), "fifteen", "teens_word(15) should return 'fifteen'");
is(teens_word(16), "sixteen", "teens_word(16) should return 'sixteen'");
is(teens_word(17), "seventeen", "teens_word(17) should return 'seventeen'");
is(teens_word(18), "eighteen", "teens_word(18) should return 'eighteen'");
is(teens_word(19), "nineteen", "teens_word(19) should return 'nineteen'");
