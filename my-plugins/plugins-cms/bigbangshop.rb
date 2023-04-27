Plugin.define do
name "bigbangshop"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/BIGBANGSHOP/, :search=>'headers[x-server]'},
{:search=>"all", :text=>'BigBangShop'},
]
end