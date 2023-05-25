Plugin.define do
name "bounce-exchange"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Bounce Exchange'},
{:search=>'body', :regexp=>/^https?:..tag\.bounceexchange\.com./},
]
end