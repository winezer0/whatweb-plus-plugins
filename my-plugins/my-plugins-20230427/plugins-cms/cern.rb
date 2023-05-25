Plugin.define do
name "CERN"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The CERN httpd (also known as W3C httpd) is a generic public domain full-featured hypertext server which can be used as a regular HTTP server. Version 3.0A is the final version. It was generated July 15th 1996."
website "http://www.w3.org/Daemon/"
matches [
{:search=>"headers", :text=>'CERN'},
{:search=>"headers[server]", :version=>/^CERN\/([^\s]+)/},
]
end
