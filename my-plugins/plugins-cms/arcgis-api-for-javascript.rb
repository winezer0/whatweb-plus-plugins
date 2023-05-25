Plugin.define do
name "arcgis-api-for-javascript"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/basemaps\.arcgis\.com/, :search=>'body'},
{:regexp=>/js\.arcgis\.com/, :search=>'body'},
{:search=>"all", :text=>'ArcGIS API for JavaScript'},
]
end