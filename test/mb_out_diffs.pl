#!/usr/bin/perl -w
use strict;

my $verbose = shift || 'quiet';
$verbose = ($verbose eq 'verbose')? 1 : 0;
my $ref_output_files = `ls ref_*`;

my @rofs = split(" ", $ref_output_files);
my $n_bad_files = 0;

for my $ref_file (@rofs){
	my $test_file = $ref_file;
	$test_file =~ s/^ref_//; # remove the ref_ from front of filename
		my $diffout = `diff $ref_file $test_file`;
	my @difflines = split("\n", $diffout);
	if(scalar @difflines > 4){
#print scalar @difflines, "\n";
		printf("%24s  does NOT agree with  %24s\n", $test_file, $ref_file);
		print "[[$diffout]]" if($verbose);
		$n_bad_files++;
	}
}
print scalar @rofs, " files tested; ", scalar @rofs - $n_bad_files, " match reference files, ", $n_bad_files, " don't.\n";
