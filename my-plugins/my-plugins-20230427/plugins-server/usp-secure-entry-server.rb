Plugin.define do
name "usp-secure-entry-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "United Security Providers (USP; previously known as Tetrade) Secure Entry Server (SES) Web Application Firewall (WAF)"
website "http://www.united-security-providers.com/"
matches [
{:search=>"headers", :text=>'Secure Entry Server'},
{:search=>"headers[server]", :regexp=>/^Secure Entry Server$/},
]
end
