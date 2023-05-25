Plugin.define do
name "airlink-modem"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Modem@AirLink.com'},
]
end