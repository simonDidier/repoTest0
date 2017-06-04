#!/usr/bin/env perl
use strict;
use warnings;
$|++;
use File::Copy;

system('touch .gitignore');
system("git add .");
system (qq{git commit -m "commit initial"});

my $f1='f1';
open my $F1, '>>',$f1;
my $f2='f2';
open my $F2, '>>',$f2;

for (1..4){
    print $F1 "ligne fichier 1 n° $_\n";
    system ("git add $f1");
    system (qq{git commit -m "commit n° $_ for f1"});
    print $F2 "ligne fichier 2 n° $_\n";
    system ("git add $f2");
    system (qq{git commit -m "commit n° $_ for f2"});
}