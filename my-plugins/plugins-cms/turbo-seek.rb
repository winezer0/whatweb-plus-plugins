Plugin.define do
name "Turbo-Seek"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Turbo Seek enables anyone to build a Search Engine & Directory Portal with the minimum expense and effort."
website "http://www.focalmedia.net/index_tb.html"
matches [
{:name=>"uniquie javascript",
:certainty=>100,
:text=>'    var myspecs = "\'menubar=0,status=1,resizable=1,location=0,titlebar=1,toolbar=1,scrollbars=1,width=" + mywidth + ",height=" + myheight + "\'";'},
{:name=>'GHDB: filetype:cgi inurl:tseekdir.cgi',
:certainty=>75,
:ghdb=>'filetype:cgi inurl:tseekdir.cgi'},
]
end
