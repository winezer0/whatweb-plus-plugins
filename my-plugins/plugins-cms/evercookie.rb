Plugin.define do
name "evercookie"
authors [
"Aung Khant <http://yehg.net/>", 

"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "EverCookie - evercookie is a javascript API available that produces extremely persistent cookies in a browser. Its goal is to identify a client even after they've removed standard cookies, Flash cookies (Local Shared Objects or LSOs), and others."
website "http://samy.pl/evercookie/"
matches [
{:ghdb=>'inurl:/evercookie.js filetype:js "\*  by samy kamkar : code@samy.pl : http://samy.pl"'},
{:string=>/<script[^>]+src=['"]([^"^'^>]*evercookie\.js)['"][^>]*>[\s]*<\/script>/},
{:text=>'evercookie.js'},
{:text=>'var ec = new evercookie();'},
{:url=>'evercookie.js',:text=>'*  by samy kamkar : code@samy.pl : http://samy.pl'},
{:version=>/^ \* evercookie ([\d\.]{1,3}) \([\d]{2}\/[\d\.]{2}\/[\d\.]{4}\) -- extremely persistent cookies/},
]
end
