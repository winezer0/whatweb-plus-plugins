Plugin.define do
name "Google-Maps"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Google Maps"
website "http://maps.google.com/"
dorks [
'"powered by google maps"'
]
matches [
{:regexp=>/(?:maps\.google\.com.maps\?file=api(?:&v=([\d.]+))?|maps\.google\.com.maps.api.staticmap)/, :search=>'body'},
{:regexp=>/..maps\.google(?:apis)?\.com.maps.api.js/, :search=>'body'},
{:regexp=>/<script [^>]*src=["'][^>]*maps\.google\.com\/maps(\?file=api|\/api\/staticmap)/i},
{:text=>'maps.google.com/maps'},
]
end