Plugin.define do
name "post-affiliate-pro"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/postaffiliatepro\.com.scripts.trackjs\.js/, :search=>'body'},
{:search=>'body', :regexp=>/(?:affiliate|associate)\..+.scripts.trackjs\.js/},
]
end