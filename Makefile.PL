use strict;
use warnings;

use 5.010000;

use ExtUtils::MakeMaker 6.17;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Manage MongoDB documents as Moose objects",
  "AUTHOR" => "David Golden <dagolden\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.17"
  },
  "DISTNAME" => "Meerkat",
  "LICENSE" => "apache",
  "MIN_PERL_VERSION" => "5.010000",
  "NAME" => "Meerkat",
  "PREREQ_PM" => {
    "Carp" => 0,
    "DateTime" => 0,
    "Module::Runtime" => 0,
    "MongoDB" => 0,
    "MongoDB::OID" => 0,
    "Moose" => 2,
    "Moose::Role" => 2,
    "MooseX::AttributeShortcuts" => 0,
    "MooseX::Role::Logger" => 0,
    "MooseX::Role::MongoDB" => "0.009",
    "MooseX::Storage" => 0,
    "MooseX::Storage::Engine" => 0,
    "MooseX::Types" => 0,
    "Scalar::Util" => 0,
    "Syntax::Keyword::Junction" => 0,
    "Tie::IxHash" => 0,
    "Try::Tiny" => 0,
    "Try::Tiny::Retry" => "0.002",
    "Type::Params" => 0,
    "Types::Standard" => 0,
    "aliased" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Data::Faker" => 0,
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "MooX::Types::MooseLike::Base" => 0,
    "Test::Deep" => 0,
    "Test::FailWarnings" => 0,
    "Test::Fatal" => 0,
    "Test::More" => 0,
    "Test::Requires" => 0,
    "Test::Roo" => 0,
    "Test::Roo::Role" => 0,
    "Time::HiRes" => 0,
    "lib" => 0
  },
  "VERSION" => "0.015",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Data::Faker" => 0,
  "DateTime" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "Module::Runtime" => 0,
  "MongoDB" => 0,
  "MongoDB::OID" => 0,
  "MooX::Types::MooseLike::Base" => 0,
  "Moose" => 2,
  "Moose::Role" => 2,
  "MooseX::AttributeShortcuts" => 0,
  "MooseX::Role::Logger" => 0,
  "MooseX::Role::MongoDB" => "0.009",
  "MooseX::Storage" => 0,
  "MooseX::Storage::Engine" => 0,
  "MooseX::Types" => 0,
  "Scalar::Util" => 0,
  "Syntax::Keyword::Junction" => 0,
  "Test::Deep" => 0,
  "Test::FailWarnings" => 0,
  "Test::Fatal" => 0,
  "Test::More" => 0,
  "Test::Requires" => 0,
  "Test::Roo" => 0,
  "Test::Roo::Role" => 0,
  "Tie::IxHash" => 0,
  "Time::HiRes" => 0,
  "Try::Tiny" => 0,
  "Try::Tiny::Retry" => "0.002",
  "Type::Params" => 0,
  "Types::Standard" => 0,
  "aliased" => 0,
  "lib" => 0,
  "namespace::autoclean" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
