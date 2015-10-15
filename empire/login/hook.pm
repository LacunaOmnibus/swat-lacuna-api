modify_resource(sub {
    '/empire'
});


our $logged;
our $session_id;

if ( -f '/tmp/session.id' ) {

    $logged = 1;
    set_response('already logged in');
    open F, '/tmp/session.id';
    our $session_id = <F>;
    close;

}else{

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
    
}



sub login_generator {

    my @list = ();                                      
    if (our $logged){                                   
        push @list, "already logged in";                
    }else{                                              
        push @list, "200 OK";                          
        push @list, 'regexp: "session_id":"(\S+?)"';                     
        push @list, 'code: open F, "> /tmp/session.id" or die $!; print F capture()->[0]; close F;';     
    }

    [@list]
}

1;

