Plugin.define do
name "shapecss" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/.([\d.]+).shapecss(?:\.min)?\.js/},
{:offset=>1, :search=>'body', :regexp=>/shapecss[-.]([\d.]*\d)[^.]*\.js/},
{:regexp=>/<link[^>]* href="[^"]*shapecss(?:\.min)?\.css/},
{:regexp=>/shapecss.*\.js/, :search=>'body'},
{:search=>"all", :text=>'Shapecss'},
]
end