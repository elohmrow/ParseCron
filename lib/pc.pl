#!/usr/bin/env perl

use strict;
use warnings;

use ParseCron qw/parse_cron/;

#print "\n\nTEST\n\n";

#my @cmds = ('42 12 3 Feb Sat blah', '* */3 * * * blah');

#my @cmds = ('42 12 3 Feb Sat', '* */3 * * *');
my @cmds = ('42 12 3 Feb Sat', '', '* * * * *', '* */3 * * *', '* * * * *');

foreach my $cmd (@cmds) {
    my $blah = parse_cron($cmd);

    next if $blah =~ /error/i;

    print "($cmd) means this cron job will run $blah\n";
}


1;
