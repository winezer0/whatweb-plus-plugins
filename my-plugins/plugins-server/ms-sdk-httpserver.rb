Plugin.define do
name "ms-sdk-httpserver"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "The Microsoft .NET Micro Framework Platform SDK is a powerful and flexible platform for rapidly creating embedded device firmware with Microsoft Visual Studio. This plugin identifies servers based on the HttpServer sample provided with the SDK."
website "http://msdn.microsoft.com/en-us/library/ee434092.aspx"
matches [
{:regexp=>/^MS-SDK-HttpServer/, :search=>"headers[server]"},
{:version=>/^MS-SDK-HttpServer\/([\d\.]+)$/, :search=>"headers[server]"},
]
end
