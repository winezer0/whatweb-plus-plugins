Plugin.define do
name "Claroline"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Claroline is an Open Source eLearning and eWorking platform allowing teachers to build effective online courses and to manage learning and collaborative activities on the web. Translated into 35 languages, Claroline has a large worldwide community"
website "http://www.claroline.net/"
dorks [
'"Powered by Claroline"'
]
matches [
{:certainty=>75, :text=>'<link href="http://www.claroline.net" rel="Copyright" />'},
{:certainty=>75, :text=>'<link href="http://www.claroline.net/credits.htm" rel="Author" />'},
{:certainty=>75, :text=>'<link href="http://www.claroline.net/documentation.htm" rel="Help" />'},
{:string=>/<div id="poweredBy">[^<]{1,20}<a href="http:\/\/www\.claroline\.net" target="_blank">Claroline<\/a> &copy; 2001 - (20[\d]{2})<\/div>/},
{:text=>'http://www.claroline.net" rel="Copyright'},
{:text=>'target="_blank">Claroline</a>'},
]
end
