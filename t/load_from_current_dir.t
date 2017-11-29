use strict;
use warnings;
use Test::More;

# '.' was removed from @INC in version 5.26 of Perl.
# https://metacpan.org/pod/release/XSAWYERX/perl-5.26.0/pod/perldelta.pod#Removal-of-the-current-directory-%28%22.%22%29-from-@INC


plan tests => 1;
diag "Perl version is $]";
diag explain \@INC;

#BEGIN {
#    # Who cares about security. We fully trust the current directory
#    if ($] >= 5.026000) {
#        push @INC, '.';
#    }
#}


eval {
    require MyLocal;
};
is $@, '';
