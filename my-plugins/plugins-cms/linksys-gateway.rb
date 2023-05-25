Plugin.define do
name "linksys-gateway"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys gateway'},
]
end