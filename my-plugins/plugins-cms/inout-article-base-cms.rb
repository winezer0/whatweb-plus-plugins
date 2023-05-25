Plugin.define do
name "inout-article-base-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Inout Article Base CMS'},
{:text=>' href="http://www.inoutscripts.com/?r=0">Powered by Inoutscripts</a>', :certainty=>75},
{:text=>'<title>Inout Article Base - Admin Area</title>'},
{:text=>'<title>Inout ArticleBase - Login</title>'},
{:text=>'function trim(stringValue){return stringValue.replace(/(^\s*|\s*$)/, "");}', :certainty=>75},
]
end