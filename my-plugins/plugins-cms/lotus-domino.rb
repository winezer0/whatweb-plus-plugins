Plugin.define do
name "Lotus-Domino"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Lotus Domino - Social business application platform"
website "https://www-01.ibm.com/software/lotus/products/domino/"
matches [
{:certainty=>25, :ghdb=>'filetype:nsf'},
{:certainty=>75, :url=>"/favicon.ico", :md5=>"639b61409215d770a99667b446c80ea1"},
{:search=>"headers", :text=>'Server: Lotus-Domino'},
{:search=>"headers[server]", :regexp=>/^Lotus-Domino$/},
{:search=>"headers[server]", :version=>/^Lotus-Domino\/([^\s]+)/},
{:search=>'headers[server]', :regexp=>/Lotus-Domino/},
{:text=>'IBM Lotus iNotes Login'},
{:text=>'iwaredir.nsf'},
{:url=>"/favicon.ico",:allhash=>"7dbe9acc2ab6e64d59fa67637b1239df"},
]
end
