Plugin.define do
name "inout-article-base-confirm"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Inout Article Base is a powerful, feature rich, fully customizable article script from inoutscripts.com. This is a highly Search Engine Optimized script which helps you to publish unlimited number of articles."
website "http://www.inoutscripts.com/products/inout_article_base/"
dorks [
'"Powered by Inoutscripts"'
]
matches [
{:text=>' href="http://www.inoutscripts.com/?r=0">Powered by Inoutscripts</a>', :certainty=>75},
{:text=>'<title>Inout Article Base - Admin Area</title>'},
{:text=>'<title>Inout ArticleBase - Login</title>'},
{:text=>'function trim(stringValue){return stringValue.replace(/(^\s*|\s*$)/, "");}', :certainty=>75},
]
end
