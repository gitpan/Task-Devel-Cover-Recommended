#!perl -T

use strict;
use warnings;

use Test::More;

use lib 't/lib';
use VPIT::TestHelpers;

load_or_skip('Test::Pod::Coverage', '1.04', [ ],
             'required for testing POD coverage');

eval 'use Test::Pod::Coverage'; # Make Kwalitee test happy

all_pod_coverage_ok();
