package Task::Devel::Cover::Recommended;

use strict;
use warnings;

=head1 NAME

Task::Devel::Cover::Recommended - Install Devel::Cover and its recommended dependencies.

=head1 VERSION

Version v0.930.1

=cut

our $VERSION = 'v0.930.1';

=head1 SYNOPSIS

    $ cpan Task::Devel::Cover::Recommended
    $ cpanp -i Task::Devel::Cover::Recommended
    $ cpanm Task::Devel::Cover::Recommended

=head1 DESCRIPTION

This task module lets you easily install L<Devel::Cover> 0.93 and all its recommended dependencies.

=head1 DEPENDENCIES

=head2 Configure-time dependencies

=over 4

=item *

L<ExtUtils::MakeMaker>

=back

=head2 Build-time and test-time dependencies

=over 4

=item *

L<ExtUtils::MakeMaker>

=item *

L<Test::Differences>

=item *

L<Test::More>

=item *

L<Test::Warn>

=back

=head2 Run-time dependencies

=over 4

=item *

L<Devel::Cover> 0.93

=item *

C<perl> 5.008002

=item *

L<Browser::Open>

=item *

L<Digest::MD5>

=item *

L<JSON::PP>

=item *

L<PPI::HTML> 1.07

Devel::Cover lets you optionally pick between L<PPI::HTML> and L<Perl::Tidy>, but it will only use the former if both are installed.

=item *

L<Parallel::Iterator>

=item *

L<Pod::Coverage> 0.06

=item *

L<Pod::Coverage::CountParents>

=item *

L<Storable>

=item *

L<Template> 2.00

=back

=head1 CAVEATS

Note that run-time dependencies that are only recommended by Devel::Cover may not yet be installed at the time Devel::Cover is tested, as there is no explicit dependency link between them and in that case most CPAN clients default to install prerequisites in alphabetic order.
However, they will be installed when Task::Devel::Cover::Recommended is, thus will be available when you actually use Devel::Cover.

=head1 AUTHOR

Vincent Pit, C<< <perl at profvince.com> >>, L<http://www.profvince.com>.

You can contact me by mail or on C<irc.perl.org> (vincent).

=head1 BUGS

Please report any bugs or feature requests to C<bug-task-devel-cover-recommended at rt.cpan.org>, or through the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Task-Devel-Cover-Recommended>.
I will be notified, and then you'll automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Task::Devel::Cover::Recommended

=head1 COPYRIGHT & LICENSE

Copyright 2012 Vincent Pit, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of Task::Devel::Cover::Recommended
