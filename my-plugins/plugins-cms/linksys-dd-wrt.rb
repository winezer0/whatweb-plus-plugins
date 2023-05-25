Plugin.define do
name "linksys-dd-wrt"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'LINKSYS-DD-WRT'},
{:search=>"headers", :text=>'Linksys DD-WRT'},
]
end