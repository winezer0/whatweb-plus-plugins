Plugin.define do
name "foxi-bizzz"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'X-Powered-Cms: FOXI BIZzz'},
]
end