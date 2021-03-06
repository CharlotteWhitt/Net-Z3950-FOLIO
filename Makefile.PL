use 5.008000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Net::Z3950::FOLIO',
    VERSION_FROM      => 'lib/Net/Z3950/FOLIO.pm', # finds $VERSION
    PREREQ_PM         => {
	Net::Z3950::SimpleServer => 1.21,
	LWP::UserAgent => 6.05,
	Cpanel::JSON::XS => 4.08,
	MARC::Record => 2.0,
	Net::Z3950::ZOOM => 1.30,
	URI::Escape => 3.31,
	XML::Simple => 2.25
    }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Net/Z3950/FOLIO.pm', # retrieve abstract from module
       AUTHOR         => 'Mike Taylor <mike@sd.apple.com>') : ()),
);
