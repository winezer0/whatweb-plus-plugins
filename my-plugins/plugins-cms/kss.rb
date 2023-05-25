Plugin.define do
name "KSS"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "KSS (Kinetic Style Sheets) is an Ajax framework that allows UI development without writing any Javascript. It uses style sheets with CSS-compliant syntax to declare and bind dynamic behaviors in the browser. The engine supports a set of generic DOM-like commands; they are computed on the server and sent back to manipulate the HTML page."
website "http://kssproject.org/"
passive do
m=[]
m << { :name=>"X-Ksscommands HTTP Header" } unless @headers["x-ksscommands"].nil?
m
end
matches [
{:ghdb=>'"Powered by KSearch" inurl:ksearch.cgi filetype:cgi'},
{:regexp=>/Powered by[\s]+<a[^>]+href="http:\/\/www\.kscripts\.com\/(scripts\.html#ksearch)?"[^>]*>KSearch<\/a>/},
{:version=>/Powered by[\s]+<a[^>]+href="http:\/\/www\.kscripts\.com\/(scripts\.html#ksearch)?"[^>]*>KSearch[\s]+([\d\.]+[a-z]?)[\s]*<\/a>/, :offset=>1},
]
end