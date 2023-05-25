Plugin.define do
name "distil-firewall-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'X-Distil-CS'},
]
end