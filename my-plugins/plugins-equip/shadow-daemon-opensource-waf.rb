Plugin.define do
name "shadow-daemon-opensource-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:status=>'403', :text=>'request forbidden by administrative rules'},
]
end