#! /usr/bin/perl -T
#---------------------------------------------------------------------
# $Id: pod-coverage.t 1832 2007-07-07 18:21:37Z cjm $
#---------------------------------------------------------------------

use Test::More;

eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage"
    if $@;

my @private = map { qr/^\Q$_\E$/ } qw(
  curlyquote parDepth textRefs fixQuotes fixDashes fixEllipses totalFields
);

all_pod_coverage_ok({also_private => \@private});
