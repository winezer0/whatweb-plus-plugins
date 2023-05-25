Plugin.define do
name "fact-finder"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<!-- Factfinder/},
{:search=>"all", :text=>'Fact Finder'},
{:search=>'body', :regexp=>/Suggest\.ff/},
]
end