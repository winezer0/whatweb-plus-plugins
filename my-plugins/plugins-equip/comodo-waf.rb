Plugin.define do
name "comodo-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'Protected by COMODO waf'},
]
end