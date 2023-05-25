Plugin.define do
name "jiasule-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'jsluid='},
]
end