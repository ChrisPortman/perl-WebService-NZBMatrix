#!/usr/bin/env perl

use strict;
use API::NZBMatrix;
use Data::Dumper;

my $api = API::NZBMatrix->new(
    {
        'username' => 'cportman',
        'apikey'   => '9e16d2539289d6b7f6abbbe5f5a0335c',
    }
);
my $error = $api->error();
print "$error\n" if $error;

my $searchResults = $api->search(
    {
        'search_term'  => 'underbelly', 
        'category'     => 'TV: SD',
        'max_results'  => 2, # number
        'max_age'      => 10, # number of days
        'min_size'     => 10, # number of MB
        'max_size'     => 700, # number of MB
#        'min_hits'     => 1, # number of hits
#        'max_hits'     => 9999, # number of hits
        'english_only' => 1,
        'search_field' => 'name',
    }
);

print Dumper($searchResults);
my $error = $api->error();
print "$error\n" if $error;

#~ my $accountDetails = $api->account();
#~ print Dumper($accountDetails);
#~ my $error = $api->error();
#~ print "$error\n" if $error;

#~ my $success = $api->bookmark('1087128');
#~ if ($success) {
	#~ print "Bookmark added\n";
#~ }
#~ my $error = $api->error();
#~ print "$error\n" if $error;
#~ 
#~ my $success = $api->bookmark({'nzb_id' => '1087128', 'action' => 'remove'});
#~ if ($success) {
	#~ print "Bookmark removed\n";
#~ }
#~ my $error = $api->error();
#~ print "$error\n" if $error;
#~ 
#~ my $details = $api->details('1087128');
#~ my $error = $api->error();
#~ print "$error\n" if $error;
#~ 
#~ print Dumper($details);

#~ my $download = $api->download({'nzb_id' => '1376551', 'file' => 'test.nzb'});
#~ my $error = $api->error();
#~ print "$error\n" if $error;
#~ 
#~ print $download."\n";
#~ 
#~ my $status = $api->site_status();
#~ print Dumper($status);

exit;
