Plugin.define do
name "koala-web-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Koala is an HTTP server written in Dylan programming language."
website "http://wiki.opendylan.org/wiki/view.dsp?title=Koala"
matches [
{:search=>"all", :text=>'Koala Web Server'},
{:search=>"headers[server]", :regexp=>/^Koala Web Server/},
{:search=>"headers[server]", :version=>/^Koala Web Server\/([^\s]+)/},
]
end
