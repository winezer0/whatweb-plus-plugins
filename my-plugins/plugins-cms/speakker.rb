Plugin.define do
name "speakker"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Crossbrowser JavaScript audio solution based on HTML5"
website "http://www.speakker.com/"
matches [
{:regexp=>/<script type="text\/javascript" src="[^"]+\/(projekktor|speakker)\.min\.js"><\/script>/},
{:text=>'<!-- INCLUDE SPEAKKER -->'},
{:text=>'<!-- INSTANTIATE SPEAKKER -->'},
]
end
