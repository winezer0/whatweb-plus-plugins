Plugin.define do
name "gae-google-app-engine-google-frontend"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Server: GFE'},
{:search=>"headers", :text=>'Server: Google Frontend'},
]
end