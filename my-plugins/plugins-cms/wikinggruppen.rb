Plugin.define do
name "wikinggruppen" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!-- WIKINGGRUPPEN/},
{:search=>"all", :text=>'Wikinggruppen'},
]
end