# @(#)$Id: Makefile.PL,v 1.1 1998/10/27 20:02:02 jleffler Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME            => 'Bundle::DBD::Informix',
    VERSION_FROM    => 'Informix.pm',
    'dist'          => {
                            COMPRESS => 'gzip -9f',
                            SUFFIX   => '.gz',
                            DIST_DEFAULT => 'all tardist',
                       },
);
