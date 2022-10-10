package REFECO::Blockchain::SmartContracts::Solidity::ABI::Type::Address;

use strict;
use warnings;
no indirect;

use Carp;
use parent qw(REFECO::Blockchain::SmartContracts::Solidity::ABI::Type);

sub encode {
    my $self = shift;
    return $self->encoded if $self->encoded;
    $self->push_static($self->pad_left(substr($self->data, 2)));

    return $self->encoded;
}

1;

