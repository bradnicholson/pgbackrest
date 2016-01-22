####################################################################################################################################
# VmTest.pm - Vm constants and data
####################################################################################################################################
package BackRestTest::Common::VmTest;

####################################################################################################################################
# Perl includes
####################################################################################################################################
use strict;
use warnings FATAL => qw(all);
use Carp qw(confess);

use Exporter qw(import);
    our @EXPORT = qw();

####################################################################################################################################
# Valid OS list
####################################################################################################################################
use constant OS_CO6                                                 => 'co6';
    push @EXPORT, qw(OS_CO6);
use constant OS_CO7                                                 => 'co7';
    push @EXPORT, qw(OS_CO7);
use constant OS_U12                                                 => 'u12';
    push @EXPORT, qw(OS_U12);
use constant OS_U14                                                 => 'u14';
    push @EXPORT, qw(OS_U14);

my $oyVm =
{
    # CentOS 6
    &OS_CO6 =>
    {
        db => ['9.0', '9.1', '9.2', '9.3', '9.4', '9.5']
    },

    # CentOS 7
    &OS_CO7 =>
    {
        db => ['9.3', '9.4', '9.5']
    },

    # Ubuntu 12.04
    &OS_U12 =>
    {
        db => ['8.3', '8.4', '9.0', '9.1', '9.2', '9.3', '9.4', '9.5']
    },

    # Ubuntu 14.04
    &OS_U14 =>
    {
        db => ['9.0', '9.1', '9.2', '9.3', '9.4', '9.5']
    }
};

####################################################################################################################################
# vmGet
####################################################################################################################################
sub vmGet
{
    return $oyVm;
}

push @EXPORT, qw(vmGet);

1;
