use ExtUtils::MakeMaker;
use Data::Dumper;
print Dumper \@INC;
print Dumper \%ENV;

my %opts = (
	'NAME'      => 'Test::Perl',
	'VERSION'   => '0.1',
	'PREREQ_PM' => {
		'Test::More'           => 0,
        #'Test::Warn'           => 0,
		#'Path::Iterator::Rule' => 0,
		#'YAML::XS'             => 0,
		#'Encode'               => 2.62,
		#'Encode::Guess'        => 2.06,
		#'Path::Tiny'           => 0,

#		'HTML::Tidy'           => 0,
#		'Test::HTML::Tidy'     => 0,

	},
);
WriteMakefile( %opts );
