use strict;
use warnings;

use Test::More;

plan tests => 1;

my $str = "a,b,c";

# split /,/, $str;
# Useless use of split in void context

sub f {
    my @warnings;
    my @expected;
    local $SIG{__WARN__} = sub { push @warnings, $_[0] };
    my $x = split /,/, $str;
    if ($] <= 5.014000) {
        push @expected, 'Use of implicit split to @_ is deprecated';
    }
    is_deeply \@warnings, \@expected, 'implicit warning';
}

f();

