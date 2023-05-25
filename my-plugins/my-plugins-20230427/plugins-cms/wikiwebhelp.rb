Plugin.define do
name "WikiWebHelp"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "wikiWebHelp - Client side is pure Javascript using mostly original code. Backend is PHP. Database is mySQL. Wiki conversion by Wiky.  Diff processing by simpleDiff."
website "http://richardbondi.net/projects.html"
dorks [
'"powered by WikiWebHelp"'
]
matches [
{:md5=>'18fe76b96d4eae173bf439a9712fa5c1', :url=>'/favicon.ico'},
{:text=>'<script type="text/javascript" language="javascript" src="script/wicky/wiky.js" ></script>'},
{:text=>'style="float:left;"><img src="theme/default/images/wh32.png"'},
{:url=>"/favicon.ico",:allhash=>"18fe76b96d4eae173bf439a9712fa5c1"},
]
end
