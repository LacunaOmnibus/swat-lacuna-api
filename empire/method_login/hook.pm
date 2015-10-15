use swat::lacuna;
use strict;

my $login = login();
my $password = password();
my $apikey = apikey();
my $postdata = test_root_dir()."/login.data";

open F, "> $postdata"  or die $!;
print F '{ "jsonrpc": "2.0", "id":1, "method":"login" , "params": [ ';
print F "\"$login\" , ";
print F "\"$password\" , ";
print F "\"$apikey\" ] }";
close F;

run_swat_module( POST => 'empire/login', { post_data => $postdata  });
set_response 'OK';
1;

