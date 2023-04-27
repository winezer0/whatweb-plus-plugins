Plugin.define do
name "intrinsyc-deviceweb"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Intrinsyc deviceWEB - a web server specialized for embedded devices"
website "http://www.intrinsyc.com/"
matches [
{:search=>"all", :text=>'Intrinsyc deviceWEB'},
{:search=>"headers[server]", :version=>/^Intrinsyc deviceWEB v([\d\.]+)$/},
]
end
