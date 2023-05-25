Plugin.define do
name "zero-one-technology-print-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Zero One Technology Print Server - Print servers connect printers directly to the network so that multiple PCs can share them."
website "http://www.01tech.com/p1-1product.asp?Bid=2"
matches [
{:regexp=>/^ZOT-PS-/, :search=>"headers[server]"},
{:version=>/^ZOT-PS-[\d]+\/(.+)$/, :search=>"headers[server]"},
]
end
