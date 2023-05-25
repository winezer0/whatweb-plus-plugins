Plugin.define do
name "ec-cart"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'ec_cart_id'},
]
end