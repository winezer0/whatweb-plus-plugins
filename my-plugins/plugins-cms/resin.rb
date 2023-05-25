Plugin.define do
name "resin"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.3"
description "Resin provides a reliable, fast Web server which can also be used as a load balancer. Resin can operate as a standalone server or as a fast servlet runner for IIS or Apache"
website "http://www.caucho.com/resin/admin/http-server.xtp"
matches [
{:regexp=>/<script type="text\/javascript" src="\/resin-doc\/js\/default.js">/},
{:regexp=>/^Resin/, :search=>"headers[server]"},
{:search=>"header",:regexp=>/Server: Resin.*/},
{:search=>"headers", :text=>'Server: Resin'},
{:search=>'headers[server]', :regexp=>/^Resin(?:.(\S*))?/,:offset=>1},
{:string=>"Plugin", :version=>/[\s]+Resin\/([^\s]+)/, :search=>"headers[server]"},
{:string=>"Standalone", :version=>/^Resin\/([^\s]+)/, :search=>"headers[server]"},
]
end
