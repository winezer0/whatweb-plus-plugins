Plugin.define do
name "mochikit" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'MochiKit'},
{:search=>'body', :regexp=>/MochiKit(?:\.min)?\.js/},
]
end