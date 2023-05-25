Plugin.define do
name "Jigsaw"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Jigsaw is W3C's leading-edge Web server platform, providing a sample HTTP 1.1 implementation and a variety of other features on top of an advanced architecture implemented in Java."
website "http://www.w3.org/Jigsaw/"
matches [
{:regexp=>/^Jigsaw/, :search=>"headers[server]"},
{:search=>"headers", :text=>'Jigsaw'},
{:version=>/^Jigsaw\/([^\s]+)$/, :search=>"headers[server]"},
]
end
