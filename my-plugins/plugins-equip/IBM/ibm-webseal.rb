Plugin.define do
name "IBM-WebSEAL"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IBM WebSEAL is a high-performance, multi-threaded Web server that applies fine-grained security policy to the Tivoli Access Manager protected Web object space."
website "http://publib.boulder.ibm.com/tividd/td/ITAME/SC32-1359-00/en_US/HTML/am51_webseal_guide02.htm#wq1"
matches [
{:search=>"headers", :text=>'WebSEAL'},
{:search=>"headers[server]", :version=>/^WebSEAL\/([^\s]+ \(Build \d+\))/},
]
end
