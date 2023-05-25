Plugin.define do
name "PG-Roomate-Finder-Solution"
authors [
"Brendan Coles <bcoles at gmail dot com>", 

]
version "0.1"
description 'PG Roommate Finder Solution - a web-based application built on PHP/MySQL for creating a roommate finder and roommate search service - a business that you can start with a minimum investment."
website "http://www.realtysoft.pro/roommate/'
dorks [
'"Powered by PG Roomate Finder Solution - roommate estate web site design"'
]
matches [
{:name=>'GHDB: "Powered by PG Roomate Finder Solution - roommate estate web site design"',
:certainty=>75,
:ghdb=>'"Powered by PG Roomate Finder Solution - roommate estate web site design"'},
{:text=>'<div align="center" style="padding-top: 20px; padding-bottom:20px;">Powered by <a href="http://www.realtysoft.pro/roommate/" title="real estate web site design, real estate listing software">PG Roomate Finder Solution - roommate estate web site design</a></div></td></tr>'},
]
end
