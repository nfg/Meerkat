use 5.008001;
use strict;
use warnings;

package TestFixtures;

use Test::Roo::Role;
use MooX::Types::MooseLike::Base qw/:all/;
use Meerkat;

#--------------------------------------------------------------------------#
# fixtures
#--------------------------------------------------------------------------#

has meerkat => (
    is  => 'lazy',
    isa => InstanceOf ['Meerkat'],
);

sub _build_meerkat {
    my ($self) = @_;
    return Meerkat->new( $self->meerkat_options );
}

has meerkat_options => (
    is  => 'lazy',
    isa => HashRef,
);

sub _build_meerkat_options {
    my ($self) = @_;
    return {
        namespace     => 'MyModel',
        database_name => 'test',
    };
}

has person => (
    is  => 'lazy',
    isa => InstanceOf ['Meerkat::Collection'],
);

sub _build_person {
    my ($self) = @_;
    return $self->meerkat->collection("Person");
}

#--------------------------------------------------------------------------#
# modifiers
#--------------------------------------------------------------------------#

before each_test => sub {
    my ($self) = @_;
    $self->meerkat->_database->drop;
};

1;
# COPYRIGHT
# vim: ts=4 sts=4 sw=4 et: