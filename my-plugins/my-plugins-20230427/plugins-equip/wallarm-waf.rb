Plugin.define do
name "wallarm-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'nginx-wallarm'},
]
end