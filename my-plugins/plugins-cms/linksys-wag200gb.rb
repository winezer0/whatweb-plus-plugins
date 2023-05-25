Plugin.define do
name "linksys-wag200gb"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys WAG200G'},
{:search=>"headers", :text=>'Linksys WAG200GB'},
]
end