Plugin.define do
name "x-web-serve"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'RX Web Server'},
{:search=>'headers[x-powered-by]', :regexp=>/RX-WEB/},
]
end