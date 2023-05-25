Plugin.define do
name "Alcatel-Lucent-Omniswitch"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Alcatel Lucent's Omniswitch"
website "https://www.al-enterprise.com/en/products/switches"
matches [
{:text=>'<title>Webview Logon Page</title>'},
{:text=>'document.write(errMsg==""?"&nbsp;":("<u>Error</u>&nbsp;-&nbsp;" + errMsg));'},
]
end
