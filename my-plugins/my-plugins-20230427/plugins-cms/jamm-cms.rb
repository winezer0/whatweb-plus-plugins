Plugin.define do
name "JAMM-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "JAMM CMS"
website "http://www.branchen-plz.de/"
dorks [
'"powered by JAMM CMS"'
]
matches [
{:ghdb=>'"powered by JAMM CMS"', :certainty=>75},
{:regexp=>/<a[^>]+href="http:\/\/jammcms\.jamm-media\.de\?ref=[^>]+>powered by JAMM CMS/i},
{:text=>"<META NAME=   'author' CONTENT='JAMM MEDIA Team 2001'>"},
{:text=>"<META NAME='Author' CONTENT='JAMM MEDIA Technologies Team 2005'>"},
{:text=>'<!--- Content Management System JAMM CMS OWEN - Visit www.jamm-media.de for more informations -->'},
]
end
