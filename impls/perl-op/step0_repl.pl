#!/usr/bin/env perl

#:TAGS:

use 5.030;

use strict;  use warnings;  use autodie qw/:all/;
use experimental qw(signatures);

# use Capture::Tiny;
# use Data::Dump;
# use List::AllUtils;
# use Mom;
# use Moo;
# use Object::Pad
# use Path::Tiny;
# use re q(/axms);
# use Time::Piece;
# use Try::Tiny;
# use Util::H2O;
################################################################################
use lib $0 =~ m{(.*)/};
use readline qw(mal_readline set_rl_mode); # from /impls/perl

sub READ($str) {
    return $str;
}

sub EVAL($ast, $env) {
    return $ast;
}

sub PRINT($exp) {
    return $exp;
}

sub REP($str) {
    return PRINT(EVAL(READ($str), {}));
}

if (scalar(@ARGV) > 0 && $ARGV[0] eq "--raw") {
    set_rl_mode("raw");
}

while (1) {
    my $line = mal_readline("user> ");
    last unless defined $line;
    print(REP($line), "\n");
}
