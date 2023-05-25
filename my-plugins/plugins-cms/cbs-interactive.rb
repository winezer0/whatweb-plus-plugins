Plugin.define do
name "CBS-Interactive"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "CBS Interactive - online content network"
website "http://www.cbsinteractive.com/"
matches [
{:account=>/<img src="http:\/\/dw\.com\.com\/clear\/c\.gif\?sid=([^"^\s^>^&]+)/},
{:account=>/<script>DW.pageParams = \{siteId:'([^']+)'\};DW.clear\(\);<\/script>/},
{:regexp=>/<script[^>]+ src="http:\/\/dw\.com\.com\/js\/dw\.js"><\/script>/},
]
end