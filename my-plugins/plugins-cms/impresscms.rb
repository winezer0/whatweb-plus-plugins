Plugin.define do
name "impresscms" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'ImpressCMS'},
{:search=>'body', :regexp=>/ImpressCMS/},
{:search=>'body', :regexp=>/include.linkexternal\.js/},
]
end