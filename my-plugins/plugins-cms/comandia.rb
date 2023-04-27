Plugin.define do
name "comandia" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<link[^>]+=['"]..cdn\.mycomandia\.com/},
{:search=>"all", :text=>'Comandia'},
]
end