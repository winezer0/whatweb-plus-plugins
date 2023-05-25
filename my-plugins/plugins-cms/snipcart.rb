Plugin.define do
name "snipcart" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/https:..cdn\.snipcart\.com.themes.v([\w.]+).default.snipcart\.js/, :search=>'body'},
{:regexp=>/<div [^>]*id=".*snipcart.*/},
{:regexp=>/<link [^>]*href=".*snipcart\.css/},
]
end