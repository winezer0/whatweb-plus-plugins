Plugin.define do
name "WiFiDog"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Wifidog project is an open source captive portal solution. Requires: PHP and postgresql"
website "http://dev.wifidog.org/"
dorks [
'"I am unable to retrieve the schema version. Either the wifidog database hasn\'t been created yet, the postgresql server is down, or pg_hba.conf does not allow your web server to connect to the wifidog database." "host" "port" "dbname"'
]
matches [
{:text=>"<html><body><h1>I am unable to retrieve the schema version. Either the wifidog database hasn't been created yet, the postgresql server is down, or pg_hba.conf does not allow your web server to connect to the wifidog database.</h1>"},
{:text=>"<p><br></p><A HREF=\"#\" ONCLICK=\"document.myform.page.value = 'Prerequisites'; document.myform.action.value = ''; document.myform.submit();\" CLASS=\"submit\">Next</A>"},
{:text=>'<TITLE>Welcome - Wifidog Auth-server installation and configuration</TITLE>'},
]
end
