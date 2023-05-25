Plugin.define do
name "materialize-css"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<link[^>]* href="[^"]*materialize(?:\.min)?\.css/},
{:regexp=>/materialize(?:\.min)?\.js/, :search=>'body'},
{:search=>"all", :text=>'Materialize CSS'},
]
end