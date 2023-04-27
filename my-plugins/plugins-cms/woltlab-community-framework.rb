Plugin.define do
name "woltlab-community-framework"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Woltlab Community Framework'},
{:search=>'body', :regexp=>/WCF\..*\.js/},
]
end