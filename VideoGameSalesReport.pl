##########################################
# Earl Platt III
# 5/12/2019
# BCS 316 - Perl Programming
# Video Game Sales Analysis 
# Input - Data Pulled in from CSV
# Output - Displays Menu & User can choose
#          What Data They Want to See
###########################################

use strict;
use warnings;
#use Term::Menu;
#use ANSI::Color;

my $file = $ARGV[0] or die "Need to open CSV file in command line\n";
my @fields;
my $fields;


open(my $vgsales, '<', $file) or die "Unable to open CSV file.\n";

while (my $line = <$vgsales>){
	chomp $line;
	
	@fields = split "'", $line;
	
	#print "@fields\n";
	
}


