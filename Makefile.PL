use strict;
use warnings;
use ExtUtils::MakeMaker;
use Alien::Build::MM;

my $abmm = Alien::Build::MM->new;

WriteMakefile($abmm->mm_args(
    DISTNAME         => 'Alien-ckdl',
    NAME             => 'Alien::ckdl',
    VERSION_FROM     => 'lib/Alien/ckdl.pm',
    ABSTRACT_FROM    => 'lib/Alien/ckdl.pm',
    AUTHOR           => 'Davenonymous <perl@davenonymous.com>',
    LICENSE          => 'perl_5',
    MIN_PERL_VERSION => '5.012',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '6.52',
        'Alien::Build::MM'    => '0.32',
    },
    BUILD_REQUIRES => {
        'Alien::Build::MM' => '0.32',
    },
    PREREQ_PM => {
        'Alien::Base' => '0',
    },
    TEST_REQUIRES => {
        'Test::More'  => '0.88',
        'Test::Alien' => '0',
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources   => {
            homepage   => 'https://github.com/tjol/ckdl',
            bugtracker => { web => 'https://github.com/Davenonymous/perl-alien-ckdl/issues' },
            repository => {
                type => 'git',
                url  => 'https://github.com/Davenonymous/perl-alien-ckdl.git',
                web  => 'https://github.com/Davenonymous/perl-alien-ckdl',
            },
        },
        dynamic_config => 1,
    },
));

sub MY::postamble {
    $abmm->mm_postamble;
}
