Plugin.define do
name "lightmon-engine"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<!-- Lightmon Engine Copyright Lightmon/},
{:search=>"all", :text=>'LightMon Engine'},
{:search=>'body', :regexp=>/LightMon Engine/},
]
end