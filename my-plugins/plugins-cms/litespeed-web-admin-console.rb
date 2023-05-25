Plugin.define do
name "litespeed-web-admin-console"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'LSWSWEBUI'},
{:text=>'LiteSpeed Web Admin Console'},
]
end