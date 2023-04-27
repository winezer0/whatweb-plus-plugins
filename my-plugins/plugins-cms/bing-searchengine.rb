Plugin.define do
name "bing-searchengine"
authors [
"Andrew Horton",

]
version "0.2"
description "Bing.com is Microsoft's search engine"
matches [
{:text=>'<meta content="Bing is a search engine that finds'},
{:text=>'var curUrl="http://www.bing.com/"'},
]
end
