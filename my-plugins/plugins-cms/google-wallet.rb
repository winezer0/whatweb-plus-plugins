Plugin.define do
name "google-wallet"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/wallet\.google\.com/, :search=>'body'},
{:search=>"all", :text=>'Google Wallet'},
{:search=>'body', :regexp=>/checkout\.google\.com/},
]
end