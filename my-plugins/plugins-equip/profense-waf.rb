Plugin.define do
name "profense-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'profense'},
]
end