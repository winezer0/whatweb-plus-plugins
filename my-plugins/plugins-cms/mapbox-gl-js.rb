Plugin.define do
name "mapbox-gl-js"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/mapbox-gl.js/, :search=>'body'},
]
end