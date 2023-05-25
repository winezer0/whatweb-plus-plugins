Plugin.define do
name "Sony-Video-Network-Station"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Sony SNT-V304 Video Network Station enables video surveillance cameras to be remotely monitored"
website "http://www.sony.com/"
matches [
{:text=>'<TITLE>SONY SNT-V304 Video Network Station</TITLE>', :version=>"SNT-V304"},
{:text=>'<TITLE>SONY Video Network Station</TITLE>'},
]
end
