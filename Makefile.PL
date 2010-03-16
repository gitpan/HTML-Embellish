
use strict;
use warnings;

 BEGIN { require 5.8.0; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'HTML::Embellish',
                       'DISTNAME' => 'HTML-Embellish',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Christopher J. Madsen <perl@cjmweb.net>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0'
                                           },
                       'ABSTRACT' => 'Typographically enhance HTML trees',
                       'EXE_FILES' => [],
                       'VERSION' => '0.03',
                       'PREREQ_PM' => {
                                        'HTML::Tree' => '3.21'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



