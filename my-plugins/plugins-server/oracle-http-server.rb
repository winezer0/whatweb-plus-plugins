Plugin.define do
name "oracle-http-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Oracle HTTP Server"
website "http://www.oracle.com/technetwork/middleware/ias/index-091236.html"
matches [
{:search=>"all", :text=>'Oracle HTTP Server'},
{:search=>"headers[server]", :regexp=>/Oracle[ -]HTTP[ -]Server/},
{:search=>"headers[server]", :version=>/Oracle_Web_[Ll]istener(_NT_)?([\d\.]+\/[^\s]+)/, :offset=>1},
{:search=>"headers[server]", :version=>/Oracle_Web_[Ll]istener(_NT_)?\/([^\s]+)/, :offset=>1},
{:search=>'headers[server]',:offset=>1, :regexp=>/Oracle-HTTP-Server(?:.([\d.]+))?/},
]
end