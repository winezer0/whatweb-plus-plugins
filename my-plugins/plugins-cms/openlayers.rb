Plugin.define do
name "openlayers" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'OpenLayers'},
{:search=>'body', :regexp=>/openlayers/},
]
end