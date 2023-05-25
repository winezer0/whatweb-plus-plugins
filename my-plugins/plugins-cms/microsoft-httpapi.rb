Plugin.define do
name "Microsoft-HTTPAPI"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "The HTTP Server API enables applications to communicate over HTTP without using Microsoft Internet Information Server (IIS). Applications can register to receive HTTP requests for particular URLs, receive HTTP requests, and send HTTP responses. The HTTP Server API includes SSL support so that applications can exchange data over secure HTTP connections without IIS. It is also designed to work with I/O completion ports."
website "http://msdn.microsoft.com/en-us/library/aa364510%28v=vs.85%29.aspx"
matches [
{:regexp=>/Microsoft-HTTPAPI/, :search=>"headers[server]"},
{:search=>"all", :text=>'Microsoft HTTPAPI'},
{:search=>"headers", :text=>'Microsoft-HTTPAPI'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Microsoft-HTTPAPI(?:.([\d.]+))?/},
{:version=>/Microsoft-HTTPAPI\/(.+)$/, :search=>"headers[server]"},
]
end
