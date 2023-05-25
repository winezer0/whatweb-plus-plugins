Plugin.define do
name "PG-Real-Estate-Solution"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Turnkey Multilingual Real Estate Website script for Real Estate professionals."
website "http://www.realtysoft.pro/realestate/index.php"
dorks [
'"powered by PG Real Estate Solution"'
]
matches [
{:text=>"Powered by <a href='http://www.realtysoft.pro/realestate/' title='real estate web site design, real estate listing software'>PG Real Estate Solution - real estate web site design</a>"},
{:text=>'	<title>PG Real Estate Solution', :certainty=>75},
{:text=>'Powered by <a href="http://www.realtysoft.pro/realestate/" title="real estate web site design, real estate listing software">PG Real Estate Solution - real estate web site design</a>'},
]
end
