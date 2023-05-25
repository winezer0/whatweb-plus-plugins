Plugin.define do
name "blogengine.net"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BlogEngine.NET is an open source .NET blogging project that was born out of desire for a better blog platform. A blog platform with less complexity, easy customization, and one that takes advantage of the latest .NET features."
website "http://www.dotnetblogengine.net/"
dorks [
'"Powered by BlogEngine.NET"'
]
matches [
{:regexp=>/Powered by[\r\n\s]*<a href="http:\/\/www.dotnetblogengine.net[\/]?"[^>]*>BlogEngine.NET<\/a>/},
{:text=>'<link rel="shortcut icon" href="pics/blogengine.ico" type="image/x-icon" />'},
{:version=>/Powered by[\r\n\s]*<a href="http:\/\/www.dotnetblogengine.net[\/]?"[^>]*>BlogEngine.NET<\/a>[\r\n\s]*([\d\.]+)/},
]
end
