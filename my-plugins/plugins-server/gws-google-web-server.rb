Plugin.define do
name "gws-google-web-server"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Server: gws'},
]
end