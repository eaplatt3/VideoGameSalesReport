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
use Term::Menus;
use Term::ANSIColor;
use Text::CSV qw(csv);

my @plat2600;
my @plat3DO;
my @plat3DS;
my @platDC;
my @platDS;
my @platGB;
my @platGBA;
my @platGC;
my @platGEN;
my @platGG;
my @platN64;
my @platNES;
my @platNG;
my @platPC;
my @platPCFX;
my @platPS;
my @platPS2;
my @platPS3;
my @platPS4;
my @platPSP;
my @platPSV;
my @platSCT;
my @platSCD;
my @platSNES;
my @platTG16;
my @platWii;
my @platWiiU;
my @platWS;
my @platX360;
my @platXB;
my @platXOne;
my @rows;
my @name;
my @platform;
my @year;
my @genre;
my @publisher;
my @naSales;
my @euSales;
my @jpSales;
my @otherSales;
my @globalSales;
my @platformGlobalSales;
my $line;
my $file = 'vgsales.csv';
my $field1, my $field2, my $field3, my $field4, my $field5, my $field6, my $field7, my $field8, my $field9, my $field10, my $field11;
my $rows;

open(F, $file) || die ("Counld not open file");

while($line = <F>){

	($field1,  $field2,  $field3,  $field4,  $field5,  $field6,  $field7,  $field8,  $field9,  $field10, $field11) = split ',', $line;
	#print "$field1, $field2, $field3, $field4, $field5, $field6, $field7, $field8, $field9, $field10\n\n";
	push @name, $field2;
	push @platform, $field3;
	push @year, $field4;
	push @genre, $field5;
	push @publisher, $field6;
	push @naSales, $field7;
	push @euSales, $field8;
	push @jpSales, $field9;
	push @otherSales, $field10;
	push @globalSales, $field11;
	push @rows, $line; 
		
	
	$rows = split "\n", $line;
	
	#print "$line\n\n";
	
	
}
print "@rows[2]\n\n";

print "\n\n";

#@platform2600 = grep {/2600/} @rows;

#print "@platform2600\n\n";


close (F);

my @menu = ('Top Sales - Platform', 'Top Sales - Year', 'Top Sales - Genre',
			'Top Sales - Publisher', 'Top Sales By Year', 'Top Genre Sales By Year',
			'Top Publisher Sales By Year', 'Lowest Game Sale', 'Higest Game Sale',
			'Higest Sales Year', 'Lowest Sales Year', 'Exit'); 
			
my $banner = "Video Game Sales Please Pick an Option";
my $selection = &pick(\@menu,$banner);
print "Selection = $selection\n";

if($selection eq 'Top Sales - Platform'){
	print "$globalSales[1]\n\n";
	print "$field1"; 	
}

