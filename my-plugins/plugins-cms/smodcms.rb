Plugin.define do
name "SmodCMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SmodCMS"
website "http://www.smod.pl/"
dorks [
'"powered by SmodCMS"'
]
matches [
{:regexp=>/[P|p]+owered by <a href="http:\/\/www.smod.pl[\/]+"[^>]+>SmodCMS[\s]*<\/a>/},
{:text=>'<meta name="Authoring_Tool" content="SmodCMS // www.smod.pl" />'},
{:text=>'<meta name="Generator" content="SmodCMS" />'},
]
end
