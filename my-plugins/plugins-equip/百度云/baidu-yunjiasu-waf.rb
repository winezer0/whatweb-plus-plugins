Plugin.define do
name "baidu-yunjiasu-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'yunjiasu-nginx'},
]
end