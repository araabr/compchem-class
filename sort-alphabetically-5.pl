#!/usr/bin/perl -W

%data1=();
#@data=();

$input = $ARGV[0];

open (IN, "$input"); 
 
open (OUT, ">$input.sorted");

while (<IN>) {

 chomp $_;
 ($numbers,$letters) = split (/\s/, $_);
 @letters = split (//, $letters);
 @letters = sort @letters;
 $sortedletters = join ("", @letters);

# $key = $sortedletters;
# $value = $numbers;

 $data1{$sortedletters} = $numbers; 

}

#close IN;

#open (OUT, ">$input.sorted");

foreach $word (sort keys %data1) {
 print OUT "$data1{$word} $word\n";
}

close IN;
close OUT;
