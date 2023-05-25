Plugin.define do
name "solusquare-omnicommerce-cloud"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Solusquare OmniCommerce Cloud'},
{:search=>'body', :regexp=>/^Solusquare$/},
]
end