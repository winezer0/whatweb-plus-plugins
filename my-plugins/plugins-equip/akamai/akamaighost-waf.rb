Plugin.define do
name "akamaighost-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'akamaighost'},
{:text=>'access.denied'},
]
end