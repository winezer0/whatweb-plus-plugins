Plugin.define do
name "PmWiki"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "PmWiki is a wiki-based system for collaborative creation and maintenance of websites."
website "http://www.pmwiki.org/"
matches [
{:regexp=>/<link rel='stylesheet' href='[^']*\/pmwiki\/pub\/skins\/pmwiki\/pmwiki\.css' type='text\/css' \/>/},
{:search=>"headers[set-cookie]", :regexp=>/imstime=[\d]+;/},
{:text=>"<span class='commentout-pmwikiorg'>"},
{:text=>'<!--PageLeftFmt-->'},
]
end