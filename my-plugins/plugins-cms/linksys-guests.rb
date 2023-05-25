Plugin.define do
name "linksys-guests"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys Guests'},
]
end