Plugin.define do
name "f5-trafficshield-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'F5-TrafficShield'},
]
end