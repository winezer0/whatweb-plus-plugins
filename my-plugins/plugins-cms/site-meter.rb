Plugin.define do
name "site-meter"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A fast, free Web counter that features custom counters styles. Site Meter creates dynamic 3D charts showing visitors, page views, country maps, visit durations and much more."
website "http://www.sitemeter.com/"
matches [
{:account=>/<img [^>]*src=["']http:\/\/[^>]+sitemeter\.com\/meter\.asp\?site=([^"^'^>]+)[^>]*>/i},
{:account=>/<script [^>]*src=["']http:\/\/[^>]+sitemeter\.com\/js\/counter\.js\?site=([^"^'^>]+)[^>]*>/i},
{:certainty=>25, :text=>"<!-- Site Meter -->"},
{:regexp=>/<!-- Copyright \(c\)20[\d]{2} Site Meter -->/},
{:search=>"all", :text=>'Site Meter'},
{:search=>'body', :regexp=>/sitemeter\.com.js.counter\.js\?site=/},
]
end
