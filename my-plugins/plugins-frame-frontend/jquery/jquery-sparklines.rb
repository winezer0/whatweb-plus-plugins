Plugin.define do
name "jquery-sparklines"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'jQuery Sparklines'},
{:search=>'body', :regexp=>/jquery\.sparkline.*\.js/},
]
end