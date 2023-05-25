Plugin.define do
name "frog-cms"
authors [
"Andrew Horton",
]
version "0.3"
description "Opensource CMS written in PHP. Frog CMS is a PHP version of Radiant CMS, a well known Ruby on Rails application. This CMS is not easily identified, expect some false-negatives"
website "http://www.madebyfrog.com/"
matches [
{:certainty=>75, :regexp=>/<[^>]+"\/frog\/plugins\//},
{:name=>"default rss feed", :text=>'<link rel="alternate" type="application/rss+xml" title="Frog Default RSS Feed"'},
{:name=>"poweredBy", :regexp=>/(Powered by|Running|Propuls.{2} par)[^<]*<a href="http:\/\/www.madebyfrog.com\/"[^>]*>Frog CMS/},
]
end