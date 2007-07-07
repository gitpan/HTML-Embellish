#! /usr/bin/perl
#---------------------------------------------------------------------
# $Id: pod.t 1832 2007-07-07 18:21:37Z cjm $
#---------------------------------------------------------------------

use Test::More;

eval "use Test::Pod 1.14";
plan skip_all => "Test::Pod 1.14 required for testing POD" if $@;

all_pod_files_ok();
