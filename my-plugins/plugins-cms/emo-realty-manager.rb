Plugin.define do
name "emo-realty-manager"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EMO Realty Manager is a full PHP/MySQL content management system for property companies, real estate agents or FSBO site."
website "http://www.emophp.com/"
dorks [
'"powered by EMO Realty Manager"'
]
matches [
{:regexp=>/[0-9]{4} Emophp.[com|COM]*<\/td><td[\ class='text8']* align='right'><a href=[\']*http:\/\/emophp.com[\/]*[\']*[\ target=_blank]*>Powered by [EMO|Emo]+ Realty Manager<\/a><\/td><\/tr><\/table><br>/},
{:regexp=>/[0-9]{4} Emophp.[com|COM]*<\/td><td[\ class='text8']* align='right'>Powered by <a href=[\']*http:\/\/emophp.com[\/]*[\']*[\ target=_blank]*>[Emo|EMO]+ Realty Manager<\/a><\/td><\/tr><\/table><br>/},
]
end
