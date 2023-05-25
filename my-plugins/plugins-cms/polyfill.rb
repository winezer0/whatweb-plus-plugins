Plugin.define do
name "polyfill" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/.polyfill\.min\.js/, :search=>'body'},
{:search=>"all", :text=>'Polyfill'},
{:search=>'body', :regexp=>/^https?:..cdn\.polyfill\.io./},
]
end