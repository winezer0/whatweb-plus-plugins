Plugin.define do
name "google-analytics-enhanced-ecommerce"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/google-analytics\.com\.plugins\.ua\.(?:ec|ecommerce)\.js/, :search=>'body'},
{:search=>"all", :text=>'Google Analytics Enhanced eCommerce'},
]
end