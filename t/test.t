#use strict;
#use warnings;

use Test::More;
plan tests => 4;

# works starting from 5.10-
# in 5.10: we get:
# Sequence (?<u...) not recognized in regex; marked by <-- HERE in m/(?<u <-- HERE ser>\w+)/ at t/test.t line 7.
SKIP: {
    skip "Named capturing introduced in 5.10", $how_many if $] < 5.010;
    "+foo+" =~ /(?<user>\w+)/;
    is $+{user}, 'foo';
};

# This worked on 5.8-5.22
is $+{borg}, undef;
is "$+{borg}", "";


like "abcd$+{x}-ef", qr{d$+{x}}, "has";
##unlike "abcdef", qr{%-}, "has not";
#ok 1;
