Plugin.define do
name "simple-analytics"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/^https:\.\.cdn\.simpleanalytics\.io\.hello\.js/, :search=>'body'},
{:search=>"all", :text=>'Simple Analytics'},
]
end