Plugin.define do
name "dreamershop"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'DreamerShop'},
{:text=>"<meta content=\"DreamerShop,"},
{:text=>"Dreamershop.com"},
]
end