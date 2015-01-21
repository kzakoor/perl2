#!/usr/bin/perl
use strict;
use warnings;

my @array = qw/ 1 a 3 3 4 x/;
my $q1 = find(3, @array);
my $q2 = find("y", @array);

print "q1 answer is $q1 \nq2 answer is $q2\n";

#my $answer = largest_value(@x);
#print "the largest value of \@x is $answer \n";

sub largest_value {
    my @numbers = @_;
    if (scalar(@numbers) == 0) {
        my $error = "Array is empty";
        return $error;
    }my $largest = $numbers[0];
        foreach (@numbers) {
            if ($_> $largest) {
                $largest = $_; #perl automatically will return the last varaible ran, don't need to specify return(x)
            }
        }return($largest);
        
}

sub find {
    my @input = $_[1];
    my $find_me = $_[0];
    foreach (@input){
        if ($_ eq $find_me) {
        return(1);
        }else{
        return(0);
        }
    }
}
