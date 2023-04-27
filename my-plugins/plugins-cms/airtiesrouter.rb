Plugin.define do
name "airtiesrouter"
authors [
"Andrew Horton",

]
version "0.1"
description "AirTies Wireless Router"
website "http://www.airties.com/"
matches [
{:text=>'Airties'},
{:version=>/<title>Airties ([^<]+)</},
]
end
