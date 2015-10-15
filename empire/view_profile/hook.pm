use swat::lacuna;
use strict;

run_swat_module( POST => 'empire/login' );

my $postdata = test_root_dir()."/view_profile.data";

my $sid = sid();

open F, "> $postdata"  or die $!;
print F '{ "jsonrpc": "2.0", "id":1, "method":"view_profile" , "params": [ ';
print F "\"$sid\" ] }";
close F;

1;

