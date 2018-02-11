use strict;
use warnings;

use Test::More;
plan tests => 1;

my $str = "a,b,c";

# split /,/, $str;
# Useless use of split in void context

sub f {
   my $x = split /,/, $str;
}

f()

pass;

