# @(#)$Id: Informix.pm,v 1.1 1998/10/27 20:02:02 jleffler Exp jleffler $

package Bundle::DBD::Informix;

$VERSION = '0.62';

1;

__END__

=head1 NAME

Bundle::DBD::Informix - A bundle to install all DBD::Informix related modules

=head1 SYNOPSIS

C<perl -MCPAN -e 'install Bundle::DBD::Informix'>

=head1 CONTENTS

Bundle::DBI  - Bundle for DBI by TIMB (Tim Bunce)

DBD::Informix  - DBD::Informix by JOHNL (Jonathan Leffler)

=head1 DESCRIPTION

This bundle includes all the modules used by the Perl Database Interface
(DBI) driver for Informix (DBD::Informix), assuming the use of DBI
version 1.02 or later, created by Tim Bunce.

You need to have some modules installed for any of this to work.
See the CPAN documentation (perldoc CPAN).

=head1 BUGS

Possibly.  I'd already got 4 bundles installed before I started testing:

	Bundle::Apache

	Bundle::libnet

	Bundle::LWP

	Bundle::CPAN

During testing, Bundle::pRPC-modules arrived.
Some of these may contain pre-requisites that should be listed in the
CONTENTS section of this bundle.

On Solaris 2.6 with Perl 5.004_04, the Sys::Syslog module used by
Storable during testing did not work until I ran:

	cd /usr/include; h2ph * sys/*

A subset of these files would have sufficed (syslog.h, sys/syslog.h, and
sys/feat_test.h at a minimum; probably more).
Also beware of bugs in the conversion of sys/syslog.h to syslog.ph; if
you grep for '""' (adjacent double quotes) and find them, you will need
to manually edit the syslog.ph file.

=head1 AUTHOR

Jonathan Leffler E<lt>F<jleffler@informix.com>E<gt>

=head1 THANKS

This bundle was created by ripping off Bundle::libnet created by 
Graham Barr E<lt>F<gbarr@ti.com>E<gt>

Since Tim Bunce created and released Bundle::DBI, this is much easier.
Prior to that, we had to guess what was relevant for DBI, which varied
from version to version of DBI.

=cut
