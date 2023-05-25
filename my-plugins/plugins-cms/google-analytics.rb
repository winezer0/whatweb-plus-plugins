Plugin.define do
name "Google-Analytics"
authors [
"Peter van der Laan",
]
version "0.1"
description "This plugin identifies the Google Analytics account."
website "http://www.google.com/analytics/"
matches [
{:account=>/_gaq.push\(\['_setAccount',[\s]*'(\w{2}-\d{1,}-\d{1,})'\]/},
{:regexp=>/<amp-analytics [^>]*type=["']googleanalytics["']/},
{:regexp=>/google-analytics\.com.(?:ga|urchin|analytics)\.js/, :search=>'body'},
{:search=>"all", :text=>'Google Analytics'},
{:text=>'google-analytics.com/analytics.js'},
{:text=>'google-analytics.com/ga.js'},
{:version=>"Universal", :account=>/ga\([\s]*'create',[\s]*'(\w{2}-\d{1,}-\d{1,})',/},
]
end