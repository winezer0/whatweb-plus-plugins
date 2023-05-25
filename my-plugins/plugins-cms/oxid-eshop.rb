Plugin.define do
name "oxid-eshop"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'OXID eShop'},
{:search=>'headers[set-cookie]', :regexp=>/oxid/},
]
end