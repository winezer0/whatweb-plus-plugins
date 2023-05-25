Plugin.define do
name "zscaler-cloud-firewall-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'zscaler'},
]
end