Plugin.define do
name "hubspot-analytics"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/js\.hs-analytics\.net.analytics/, :search=>'body'},
]
end