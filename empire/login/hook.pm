modify_resource(sub {
    '/empire'
});


our @logged;

if ( -f '/tmp/session.id' ) {
    @logged = 1;
    set_response('already logged in');
}


sub login_generator {

    my @list = ();                                      
    if (our @logged){                                   
        push @list, "already logged in";                
    }else{                                              
        push @list, "200 OK";                          
        push @list, 'regexp: "session_id":"(\S+?)"';                     
        push @list, 'code: open F, "> /tmp/session.id" or die $!; print F capture()->[0]; close F;';     
    }

    [@list]
}

1;

