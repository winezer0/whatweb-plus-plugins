Plugin.define do
name "twitter-analytics"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'body', :regexp=>/analytics\.twitter\.com/},
]
end