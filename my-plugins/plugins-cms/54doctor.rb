Plugin.define do
name "54doctor"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Server:4D'},
]
end