Plugin.define do
name "basic-auth"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Www-Authenticate: Basic'},
]
end