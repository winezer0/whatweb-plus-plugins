Plugin.define do
name "hammer.js"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Hammer.js'},
{:search=>'body', :regexp=>/hammer(?:\.min)?\.js/},
]
end