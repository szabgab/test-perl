use strict;
use warnings;
use Test::More;

# '.' was removed from @INC in version 5.26 of Perl.
# https://metacpan.org/pod/release/XSAWYERX/perl-5.26.0/pod/perldelta.pod#Removal-of-the-current-directory-%28%22.%22%29-from-@INC


plan tests => 1;

eval {
    require MyLocal;
};
diag $];
is $@, '';

