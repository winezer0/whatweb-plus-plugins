Plugin.define do
name "zenedge-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'ZENEDGE'},
]
end