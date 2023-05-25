Plugin.define do
name "ocPortal"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Cutting-edge CMS for building and maintaining a sophisticated social website. Fully flexible, themeable and extendible: suitable for building almost any kind of website."
website "http://ocportal.com"
matches [
{:name=>"ocp_session cookie", :regexp=>/ocp_session=[\d]+;/, :search=>"headers[set-cookie]"},
{:search=>"all", :text=>'ocportal'},
{:text=>'<html id="main_website_html" xmlns="http://www.w3.org/1999/xhtml"'},
{:text=>'<meta name="GENERATOR" content="ocPortal" />'},
{:url=>"/favicon.ico",:allhash=>"b9d28bd6822d2e09e01aa0af5d7ccc34"},
{:version=>/<!--\nPowered by ocPortal\n([^\n]+) version\nCopyright ocProducts Limited\nhttp:\/\/ocportal\.com\n-->/},
{:version=>/^ocPortal ([^\(]+) \(PHP/, :search=>"headers[x-powered-by]"},
]
end
