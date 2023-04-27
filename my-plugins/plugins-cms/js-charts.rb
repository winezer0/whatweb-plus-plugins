Plugin.define do
name "js-charts"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/jscharts.{0,32}\.js/, :search=>'body'},
{:search=>"all", :text=>'JS Charts'},
]
end