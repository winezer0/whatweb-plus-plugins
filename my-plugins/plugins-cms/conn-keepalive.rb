Plugin.define do
name "conn-keepalive"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Connection: keep-alive'},
]
end