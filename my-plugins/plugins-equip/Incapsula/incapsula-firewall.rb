Plugin.define do
name "incapsula-firewall" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'X-Cdn: Incapsula'},
]
end