Plugin.define do
name "Proliphix-Thermostat"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Network thermostats specifically designed for Internet access and control. They provide the features and functions of a conventional programmable thermostat with an easy-to-use, browser-based interface that significantly simplifies HVAC programming and control."
website "http://www.proliphix.com/"
dorks [
'intitle:"Thermostat" intitle:"Status & Control"'
]
matches [
{:certainty=>25, :text=>" - Status &amp; Control</title>"},
{:model=>/<script type="text\/javascript">[\r\n]*printStatusHead\(adStat,[\s]*"([^"]{4,5})","[a-z]?"\)[\r\n]*bodyStart\("status.shtml", "settings"\)/},
{:text=>"printFSC(\"\", linkbuttonGet('location.href', 'Refresh'), \"<input type=submit name='submit' value='Submit'>\")"},
]
end
