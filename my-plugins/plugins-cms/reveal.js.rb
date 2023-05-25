Plugin.define do
name "reveal.js"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Reveal.js'},
{:search=>'body', :regexp=>/(?:^|.)reveal(?:\.min)?\.js/},
]
end