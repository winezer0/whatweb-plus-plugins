Plugin.define do
name "godaddy-website-builder"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/Go Daddy Website Builder (.+)/, :search=>'body'},
{:search=>"all", :text=>'GoDaddy Website Builder'},
]
end