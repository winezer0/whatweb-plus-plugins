Plugin.define do
name "p3p-enabled"
authors [
"winezero",

]
version "0.2"
matches [
{:search=>"headers", :text=>'P3p'},
{:search=>"headers", :text=>'P3p: CP'},
]
end