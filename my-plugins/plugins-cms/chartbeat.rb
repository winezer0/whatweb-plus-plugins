Plugin.define do
name "chartbeat"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Chartbeat'},
{:search=>'body', :regexp=>/chartbeat\.js/},
]
end