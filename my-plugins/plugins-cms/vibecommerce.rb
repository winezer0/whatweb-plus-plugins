Plugin.define do
name "vibecommerce" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/vibecommerce/, :search=>'body'},
{:search=>"all", :text=>'vibecommerce'},
]
end