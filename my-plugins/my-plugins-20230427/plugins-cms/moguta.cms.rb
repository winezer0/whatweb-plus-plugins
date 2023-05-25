Plugin.define do
name "moguta.cms" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<link[^>]+href=["'][^"]+mg-(?:core|plugins|templates)./},
{:search=>"all", :text=>'Moguta.CMS'},
{:search=>'body', :regexp=>/mg-(?:core|plugins|templates)./},
]
end