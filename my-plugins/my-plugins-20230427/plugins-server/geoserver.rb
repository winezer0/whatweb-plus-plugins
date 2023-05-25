Plugin.define do
name "geoserver"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "GeoServer is part of The OpenGeo Suite and allows users to share and edit geospatial data. The GeoServer project is a full transactional Java (J2EE) implementation of the OpenGIS Consortium's Web Feature Server specification and Web Coverage Server specification, with an integrated Web Map Server."
website "http://opengeo.org/technology/geoserver/"
dorks [
'"This GeoServer belongs to" "This GeoServer instance is running version" intitle:"GeoServer: Welcome"'
]
matches [
{:regexp=>/<body>[\s]+<p><b>Redirecting to the actual home page\.<\/b><\/p>[\s]+<p>If you're stuck here, it means you don't have javascript[\s]+enabled\. Javascript is required to actually use the GeoServer admin console.<\/p>[\s]+<\/body>[\s]+<\/html>/},
{:string=>/<div id="welcome">[\s]+<p>[\s]+This GeoServer belongs to <a><span>([^<]+)<\/span><\/a>\.[\s]+<\/p>/},
{:text=>'/org.geoserver.web.GeoServerBasePage/'},
{:text=>'<link href="resources/org.geoserver.web.GeoServerBasePage/favicon.ico" rel="shortcut icon"/>'},
{:text=>'<link rel="shortcut icon" href="resources/org.geoserver.web.GeoServerBasePage/favicon.ico"/>'},
{:text=>'class="geoserver lebeg'},
{:version=>/<p>[\s]+<span>This GeoServer instance is running version <strong>([^<^\s]+)<\/strong>\. For more information please contact the <a href="[^"^>]*">administrator<\/a>\.<\/span>[\s]+<\/p>[\s]+<\/div>/},
]
end
