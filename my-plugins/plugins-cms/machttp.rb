Plugin.define do
name "MacHTTP"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "MacHTTP is a webserver designed to run on Mac OS versions 7.x through 9.x. It was written by software developer Chuck Shotton and was originally shareware; it is now available in source code form from SourceForge.net under the Perl Artistic License. It is still used on some older Macintosh hardware. It was later commercialized as WebSTAR, sold originally by StarNine and later bought by Quarterdeck Software. - More Info: http://en.wikipedia.org/wiki/MacHTTP"
website "http://www.machttp.org/downloads/machttp/"
matches [
{:regexp=>/^MacHTTP$/, :search=>"headers[server]"},
{:version=>/^MacHTTP\/([^\s]+)$/, :search=>"headers[server]"},
]
end
