use 5.010001;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Math::Sidef',
    VERSION_FROM      => 'lib/Math/Sidef.pm',
    PREREQ_PM         => {
		"Sidef" 	   => '3.96',
		"Math::AnyNum" => '0.36',
	},
    ABSTRACT_FROM     => 'lib/Math/Sidef.pm',
    AUTHOR            => 'Daniel "Trizen" Șuteu <trizen@cpan.org>',
    LICENSE           => 'artistic_2',
);
