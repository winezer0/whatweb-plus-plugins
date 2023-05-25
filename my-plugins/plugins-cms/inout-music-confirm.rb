Plugin.define do
name "inout-music-confirm"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Inout Music is the most powerful, affordable, flexible, feature rich, customizable music portal script for your website."
website "http://www.inoutscripts.com/products/inout_music/"
matches [
{:text=>' href="http://www.inoutscripts.com/?r=13">Powered by Inoutscripts</a>'},
{:text=>'function trim(stringValue){return stringValue.replace(/(^\s*|\s*$)/, "");}', :certainty=>75},
]
end
