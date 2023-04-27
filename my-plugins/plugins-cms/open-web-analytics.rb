Plugin.define do
name "open-web-analytics"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!-- (?:Start|End) Open Web Analytics Tracker -->/},
{:search=>"all", :text=>'Open Web Analytics'},
]
end