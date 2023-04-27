Plugin.define do
name "Indices"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Indices is a set of hacks that makes Apache's default directory index pages pretty and more usable."
website "http://antisleep.com/software/indices"
dorks [
'"Parent Directory" "Indices 1.1"'
]
matches [
{:regexp=>/<!--[\s]+Pleasant Apache directory listings courtesy of Indices:[\s]+http:\/\/antisleep\.com\/software\/indices[\s]+-->/},
{:version=>/<div class="credits">[\s]+<a href="http:\/\/antisleep\.com\/software\/indices">Indices<\/a> ([^\s]+)[\s]+<\/div>/},
]
end
