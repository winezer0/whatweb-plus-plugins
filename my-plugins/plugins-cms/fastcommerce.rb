Plugin.define do
name "fastcommerce" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/^Fastcommerce/, :search=>'body'},
{:search=>"all", :text=>'Fastcommerce'},
]
end