#
```
https://github.com/LacunaOmnibus/swat-lacuna-api
https://github.com/LacunaOmnibus/swat
https://github.com/LacunaOmnibus/swat-raisin
https://github.com/LacunaOmnibus/Raisin
```

# swat-lacuna-api
swat test for lacunaexpanse api


# install

    sudo yum install curl
    carton
    

# run tests

    login='empire name' password='password' apikey='api key' carton exec swat

# sample output

```
vagrant@Debian-jessie-amd64-netboot:~/projects/swat-lacuna-api$  carton exec swat
/home/vagrant/.swat/.cache/27339/prove/servers/00.GET.t ................
ok 1 - GET http://www.lacunaexpanse.com/servers.json succeeded
# response saved to /home/vagrant/.swat/.cache/27339/prove/_ahMYUyre6
ok 2 - GET /servers.json returns 200 OK
ok 3 - GET /servers.json returns Content-Type: application/json-rpc
ok 4 - GET /servers.json returns | [
ok 5 - GET /servers.json returns | {
ok 6 - GET /servers.json returns | "name" : "US1",
ok 7 - GET /servers.json returns | "uri" : "https://us1.lacunaexpanse.com/",
ok 8 - GET /servers.json returns | "status" : "Open",
ok 9 - GET /servers.json returns | "location" : "Texas, United States",
ok 10 - GET /servers.json returns | "type" : "Empire Server",
ok 11 - GET /servers.json matches | "description" : ".*"
ok 12 - GET /servers.json returns | }
ok 13 - GET /servers.json returns | ]
1..13
ok
/home/vagrant/.swat/.cache/27339/prove/stats/method_credits/00.POST.t ..
ok 1 - POST http://us1.lacunaexpanse.com/stats succeeded
# response saved to /home/vagrant/.swat/.cache/27339/prove/vK9ivFbECo
ok 2 - POST /stats returns 200 OK
ok 3 - POST /stats returns {"Game Design":["JT Smith","Jamie Vrbsky"]}
1..3
ok
/home/vagrant/.swat/.cache/27339/prove/empire/view_profile/00.POST.t ...
ok 1 - response is already set
# response saved to /home/vagrant/.swat/.cache/27339/prove/uKg6v7fXyY
ok 2 - POST /empire returns already logged in
ok 3 - POST http://us1.lacunaexpanse.com/empire/view_profile succeeded
# response saved to /home/vagrant/.swat/.cache/27339/prove/XMA9BSxAHG
ok 4 - POST /empire/view_profile returns 200 OK
ok 5 - POST /empire/view_profile returns "result":{"profile"
ok 6 - POST /empire/view_profile returns "name":"swat"
1..6
ok
All tests successful.
Files=3, Tests=22, 19 wallclock secs ( 0.04 usr  0.00 sys +  0.18 cusr  0.03 csys =  0.25 CPU)
Result: PASS
```
