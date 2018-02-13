use strict;
use warnings;

use Test::More;
use Test::Warn;

plan tests => 1;

my $str = "a,b,c";

# split /,/, $str;
# Useless use of split in void context

sub f {
   my $x = split /,/, $str;
}

warning_is    {f()} 'Use of implicit split to @_ is deprecated', "implicit warning";

