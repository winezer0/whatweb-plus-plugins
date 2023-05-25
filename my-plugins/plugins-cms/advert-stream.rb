Plugin.define do
name "advert-stream"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/(?:ad\.advertstream\.com|adxcore\.com)/, :search=>'body'},
{:search=>"all", :text=>'Advert Stream'},
]
end