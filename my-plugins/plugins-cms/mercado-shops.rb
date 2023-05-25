Plugin.define do
name "mercado-shops"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/frontend-assets.mshops-web-home.vendor/, :search=>'body'},
]
end