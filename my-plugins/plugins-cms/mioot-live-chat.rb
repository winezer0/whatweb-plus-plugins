Plugin.define do
name "Mioot-Live-Chat"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Mioot live chat JavaScript"
website "http://www.mioot.com/"
matches [
{:text=>'<!-- Start LIVE CHAT image tag, for details visit www.mioot.com -->'},
{:text=>'<a href="javascript:OnOffImage(\'V\')" '},
{:text=>'<div id="miootOnOffDiv"'},
]
end