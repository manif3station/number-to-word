#!/usr/bin/perl

# A simple Perl script to convert numbers into words.
# It handles numbers from 1 to 1,000,000, including special
# cases for English language nuances.

use strict;
use warnings;

# Convert a single digit to its word form.
sub ones_word {
    my $number = shift;
    my @words  = (
        "",    "one",   "two",   "three", "four", "five",
        "six", "seven", "eight", "nine"
    );
    return $words[$number];
}

# Converts tens place digit to its word form.
sub tens_word {
    my $number = shift;
    my @words  = (
        "",      "ten",     "twenty", "thirty", "forty", "fifty",
        "sixty", "seventy", "eighty", "ninety"
    );
    return $words[$number];
}

# Handles the unique words for numbers 10-19.
sub teens_word {
    my $number = shift;
    my @words  = (
        "ten",      "eleven",  "twelve",  "thirteen",
        "fourteen", "fifteen", "sixteen", "seventeen",
        "eighteen", "nineteen"
    );
    return $words[ $number - 10 ];
}

# The main number-to-words conversion logic.
# It breaks down the number and converts each part.
sub number_to_words {
    my $number = shift;
    return "zero" if $number == 0;

    my $result = "";

    # Handle thousands place.
    if ( $number >= 1000 ) {
        my $thousands = int( $number / 1000 );
        $result
            .= ( $thousands > 9
            ? number_to_words($thousands)
            : ones_word($thousands) )
            . " thousand";
        $number %= 1000;
        $result .= ", " if $number > 0;
    }

    # Handle hundreds place.
    if ( $number >= 100 ) {
        my $hundreds = int( $number / 100 );
        $result .= ( $hundreds > 9
        ? number_to_words($hundreds)
        : ones_word($hundreds) )
        . " hundred";
        $number %= 100;
        $result .= " and " if $number > 0;
    }
    else {
        $result =~ s/,/ and/g;
    }

    # Handle tens and ones places.
    if ( $number >= 20 ) {
        $result .= tens_word( int( $number / 10 ) );
        $number %= 10;
        $result .= " " . ones_word($number) if $number > 0;
    }
    elsif ( $number >= 10 ) {
        $result .= teens_word($number);
    }
    elsif ( $number > 0 ) {
        $result .= ones_word($number);
    }
    elsif ( $result !~ / and / ) {
        $result =~ s/,/ and/g;
    }

    return $result;
}

# Main entry point of the script.
# It handles user input and prints out the conversion.
sub main {
    print "Enter the start number: ";
    my $start = <STDIN>;
    chomp $start;

    print "Enter the end number: ";
    my $end = <STDIN>;
    chomp $end;

    $start ||= 1 if $start != 0;
    $end ||= 1_000_000;

    if ( $start !~ /^\d+$/ || $end !~ /^\d+$/ ) {
        print "Invalid input. Please try again.\n";
        exit;
    }

    if ( $end < $start ) {
        print "Invalid range. Please try again.\n";
        exit;
    }

    for my $i ( $start .. $end ) {
        printf "* %s\n", ucfirst number_to_words($i);
    }
}

# Using modulino for tests to run test cases
caller or main;
