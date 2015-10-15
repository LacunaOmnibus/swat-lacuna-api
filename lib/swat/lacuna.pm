package swat::lacuna;
1;

package main;

sub login { $ENV{login} }
sub password { $ENV{password} }
sub apikey { $ENV{apikey} }
sub sid { our $session_id }

1;
