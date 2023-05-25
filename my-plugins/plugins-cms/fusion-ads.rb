Plugin.define do
name "fusion-ads"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/^[^\.]*..[ac]dn\.fusionads\.net.(?:api.([\d.]+).)?/},
{:search=>"all", :text=>'Fusion Ads'},
]
end