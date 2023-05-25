Plugin.define do
name "javascript-infovis-toolkit"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'JavaScript Infovis Toolkit'},
{:search=>'body', :regexp=>/jit(?:-yc)?\.js/},
]
end