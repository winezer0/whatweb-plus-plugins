Plugin.define do
name "kotisivukone" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/kotisivukone(?:\.min)?\.js/, :search=>'body'},
{:search=>"all", :text=>'Kotisivukone'},
]
end