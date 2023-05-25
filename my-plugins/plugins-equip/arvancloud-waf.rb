Plugin.define do
name "arvancloud-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'ArvanCloud'},
]
end