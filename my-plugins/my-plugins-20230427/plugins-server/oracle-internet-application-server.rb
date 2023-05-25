Plugin.define do
name "oracle-internet-application-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle iAS (Internet Application Server)"
website "http://www.oracle.com/technetwork/middleware/ias/index.html"
matches [
{:search=>"headers[server]", :module=>/^Oracle9iAS.+ (Oracle9iAS-Web-Cache\/[^\s]+)/},
{:search=>"headers[server]", :version=>/^Oracle9iAS \(([^\s^\)]+)\)/},
{:search=>"headers[server]", :version=>/^Oracle9iAS\/([^\s]+)/},
]
end
