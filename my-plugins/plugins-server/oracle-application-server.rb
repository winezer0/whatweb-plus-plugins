Plugin.define do
name "oracle-application-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Oracle Application Server - superseded by Oracle iAS (Internet Application Server)"
website "http://www.oracle.com/technetwork/middleware/ias/index.html"
matches [
{:search=>"all", :text=>'Oracle Application Server'},
{:search=>"headers", :text=>'Oracle-Application-Server'},
{:search=>"headers[server]", :module=>/^Oracle[ -]Application[ -]Server.+ (OracleAS-Web-Cache-1[01]g\/[^\s]+)/},
{:search=>"headers[server]", :string=>/^Oracle-Application-Server-(1[01]g)/},
{:search=>"headers[server]", :version=>/^Oracle Application Server\/1[01]g \(([^\s^\)]+)\)/},
{:search=>"headers[server]", :version=>/^Oracle-Application-Server-1[01]g\/([^\s]+)/},
{:search=>'headers[server]',:offset=>1, :regexp=>/Oracle[- ]Application[- ]Server(?: Containers for J2EE)?(?:[- ](\d[\da-z..]+))?/},
]
end