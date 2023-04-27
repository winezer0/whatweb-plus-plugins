Plugin.define do
name "immunify360-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'imunify360'},
]
end