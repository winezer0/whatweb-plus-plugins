Plugin.define do
name "linksys-rv082"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'LINKSYS RV082'},
{:search=>"headers", :text=>'Linksys-RV082'},
]
end