Plugin.define do
name "siteglide"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Siteglide'},
{:search=>'body', :regexp=>/siteglide\.js/},
]
end