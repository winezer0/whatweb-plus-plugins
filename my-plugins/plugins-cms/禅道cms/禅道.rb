Plugin.define do
name "禅道" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'zentaosid'},
{:serach=>'headers', :text=>'zentaosid'},
{:text=>'/theme/default/images/main/zt-logo.png'},
]
end