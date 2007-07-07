#! /usr/bin/perl
#---------------------------------------------------------------------
# $Id: perlcritic.t 1832 2007-07-07 18:21:37Z cjm $
#---------------------------------------------------------------------

use Test::More;

eval "use Test::Perl::Critic qw(-verbose 10)";
plan skip_all => "Test::Perl::Critic required for testing PBP compliance" if $@;

all_critic_ok();
