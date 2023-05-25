Plugin.define do
name "powerweb"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "PowerWeb is a full 128-bit secure server with unlimited RSA encryption using industry standard SSL 3.0 (and 2.0), providing HTTP, FTP, SMTP and POP3 services, with many extensions for rapid database application development and dynamic page content."
website "http://www.compusource.co.za/powerweb/"
matches [
{:regexp=>/^PowerWeb/, :search=>"headers[server]"},
{:version=>/^PowerWeb\/([^\s]+)$/, :search=>"headers[server]"},
]
end
