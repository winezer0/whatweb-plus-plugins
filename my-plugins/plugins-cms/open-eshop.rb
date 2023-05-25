Plugin.define do
name "open-eshop"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/Open eShop ?([0-9.]+)?/, :search=>'body'},
{:regexp=>/open-eshop\.com/, :search=>'body'},
{:search=>"all", :text=>'Open eShop'},
]
end