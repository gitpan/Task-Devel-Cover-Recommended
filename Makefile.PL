use 5.008002;

use strict;
use warnings;
use ExtUtils::MakeMaker;

my $dist = 'Task-Devel-Cover-Recommended';

(my $name = $dist) =~ s{-}{::}g;

(my $file = $dist) =~ s{-}{/}g;
$file = "lib/$file.pm";

my %DC_CONFIGURE = (
 'ExtUtils::MakeMaker' => 0,
);

my %DC_BUILD = (
 'Test::Differences' => 0,
 'Test::More'        => 0,
 'Test::Warn'        => 0,
);

my %DC_PREREQ_PM = (
 'Devel::Cover'                => '0.93',

 'Browser::Open'               => '0',
 'Digest::MD5'                 => '0',
 'JSON::PP'                    => '0',
 'PPI::HTML'                   => '1.07',
 'Parallel::Iterator'          => '0',
 'Pod::Coverage'               => '0.06',
 'Pod::Coverage::CountParents' => '0',
 'Storable'                    => '0',
 'Template'                    => '2.00',
);

my %META = (
 configure_requires => {
  'ExtUtils::MakeMaker' => 0,
  %DC_CONFIGURE,
 },
 build_requires => {
  'ExtUtils::MakeMaker' => 0,
  'Test::More'          => 0,
  %DC_BUILD,
 },
 dynamic_config => 0,
 resources => {
  bugtracker => "http://rt.cpan.org/NoAuth/ReportBug.html?Queue=$dist",
  homepage   => "http://search.cpan.org/dist/$dist/",
  license    => 'http://dev.perl.org/licenses/',
  repository => "http://git.profvince.com/?p=perl%2Fmodules%2F$dist.git",
 },
);

WriteMakefile(
 NAME             => $name,
 AUTHOR           => 'Vincent Pit <perl@profvince.com>',
 LICENSE          => 'perl',
 VERSION_FROM     => $file,
 ABSTRACT_FROM    => $file,
 PL_FILES         => {},
 PREREQ_PM        => \%DC_PREREQ_PM,
 MIN_PERL_VERSION => '5.008002',
 META_MERGE       => \%META,
 dist             => {
  PREOP    => "pod2text -u $file > \$(DISTVNAME)/README",
  COMPRESS => 'gzip -9f', SUFFIX => 'gz'
 },
 clean            => {
  FILES => "$dist-* *.gcov *.gcda *.gcno cover_db Debian_CPANTS.txt*"
 }
);
