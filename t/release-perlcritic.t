#! /usr/bin/perl

BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

#---------------------------------------------------------------------

use Test::More;

eval "use Test::Perl::Critic qw(-verbose 10)";
plan skip_all => "Test::Perl::Critic required for testing PBP compliance" if $@;

all_critic_ok();
