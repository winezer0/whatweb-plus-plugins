Plugin.define do
name "Subsonic"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Subsonic is a free, web-based media streamer, providing ubiquitous access to your music. Based on Java technology, Subsonic runs on most platforms, including Windows, Mac, Linux and Unix variants."
website "http://www.subsonic.org/pages/index.jsp"
dorks [
'intitle:"Subsonic" "Username" "Password" "Remember me" inurl:login.view'
]
matches [
{:search=>"all", :text=>'subsonic'},
{:text=>'<form action="/j_acegi_security_check" method="POST">'},
{:text=>'<input type="checkbox" name="_acegi_security_remember_me" id="remember" class="checkbox" tabindex="3">'},
]
end
