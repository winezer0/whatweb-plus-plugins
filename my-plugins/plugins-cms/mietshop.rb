Plugin.define do
name "mietshop" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<a href="https:..ssl\.mietshop\.d/},
{:search=>"all", :text=>'Mietshop'},
{:search=>'body', :regexp=>/Mietshop/},
]
end