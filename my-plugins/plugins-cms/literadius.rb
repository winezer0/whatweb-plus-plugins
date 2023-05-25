Plugin.define do
name "LiteRadius"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LiteRadius is a web server software program that interfaces geographic locations to the Google Maps API. Requires PHP and MySQL."
website "http://www.escaperadius.com/er/products/literadius/lr.php"
dorks [
'allinurl: locator.php?long='
]
matches [
{:ghdb=>'inurl:locator.php parsed_page lat long'},
]
end
