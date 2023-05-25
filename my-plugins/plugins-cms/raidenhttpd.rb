Plugin.define do
name "raidenhttpd"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "RaidenHTTPD is a fully featured web server software for Windows platform."
website "http://www.raidenhttpd.com/en/"
matches [
{:search=>"all", :text=>'RaidenHTTPD'},
{:search=>"headers[server]", :string=>/^RaidenHTTPD\/[^\s]+ \(([^\)]+)\)$/},
{:search=>"headers[server]", :version=>/^RaidenHTTPD\/([^\s]+) \([^\)]+\)$/},
]
end