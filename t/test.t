use strict;
use warnings;

use Test::More;
plan tests => 1;

"+foo+" =~ /(?<user>\w+)/;
is $+{user}, 'foo';

#like "abcd$+{-ef", qr{d$-}, "has";
##unlike "abcdef", qr{%-}, "has not";
#ok 1;
#ok 1;
