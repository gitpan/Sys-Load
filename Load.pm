package Sys::Load;

use 5.006;
use strict;
use warnings;

require Exporter;
require DynaLoader;

our @ISA = qw(Exporter DynaLoader);

our @EXPORT_OK = qw( getload );

our $VERSION = '0.1';

bootstrap Sys::Load $VERSION;

# Preloaded methods go here.

1;
__END__

=head1 NAME

Sys::Load - Perl module for getting the current system load

=head1 SYNOPSIS

  use Sys::Load qw/getload/;
  my @load = getload();
  print "System load: ", $load[0], "\n";

=head1 DESCRIPTION

getload() returns 3 elements: representing load averages over the last 1, 5 and
15 minutes. On failure empty list is returned.

=head2 EXPORT

None by default.

=head1 AUTHOR

Peter BARABAS, E<lt>z0d [@] artifact [.] huE<gt>

=head1 SEE ALSO

L<getloadavg(3)>

=cut

