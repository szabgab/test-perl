#use strict;
#use warnings;

use Test::More;
plan tests => 2;

# works in 5.12-5.22
# in 5.10: we get:
# Sequence (?<u...) not recognized in regex; marked by <-- HERE in m/(?<u <-- HERE ser>\w+)/ at t/test.t line 7.
# "+foo+" =~ /(?<user>\w+)/;
# is $+{user}, 'foo';

is $+{borg}, undef;
is "$+{borg}", "";


#like "abcd$+{-ef", qr{d$-}, "has";
##unlike "abcdef", qr{%-}, "has not";
#ok 1;
#ok 1;
