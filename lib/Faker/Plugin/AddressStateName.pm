package Faker::Plugin::AddressStateName;

use 5.014;

use strict;
use warnings;

use registry;
use routines;

use Data::Object::Class;
use Data::Object::ClassHas;

extends 'Data::Object::Plugin';

# VERSION

# ATTRIBUTES

has 'faker' => (
  is => 'ro',
  isa => 'ConsumerOf["Faker::Maker"]',
  req => 1,
);

# METHODS

method execute() {
   my $faker = $self->faker;

  my $options = {
    line_markers => 1,
  };

  return $faker->process(['address', 'state_name'], $options);
}

1;
