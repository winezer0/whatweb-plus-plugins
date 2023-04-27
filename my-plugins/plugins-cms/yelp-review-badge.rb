Plugin.define do
name "yelp-review-badge"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/yelp\.com.biz_badge_js/, :search=>'body'},
]
end