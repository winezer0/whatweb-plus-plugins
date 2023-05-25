Plugin.define do
name "material-design-lite"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/(?:.([\d.]+))?.material(?:\.min)?\.js/},
{:regexp=>/<link[^>]* href="[^"]*material(?:\.[\w]+-[\w]+)?(?:\.min)?\.css/},
{:search=>"all", :text=>'Material Design Lite'},
]
end