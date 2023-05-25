Plugin.define do
name "Ultrastats"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "UltraStats is a php based gamelog parser for the famous Call of Duty franchise supporting Call of Duty, Call of Duty: United Office, Call of Duty2, Call of Duty 4: Modern Warfare and Call of Duty: World at War. In order to fully support UltraStats, you need a Apache or IIS Webserver with PHP5 ( PHP4 should still work ) installed. You also need a MySQL Database to store the data into."
website "http://www.ultrastats.org/"
dorks [
'intitle:"Ultrastats :: Home"'
]
matches [
{:regexp=>/<title>Ultrastats :: [^<]+<\/title>/i},
{:text=>'<DIV align=center>Powered by Ultrastats'},
{:text=>'<img src="./images/main/ultrastatslogo.png" width="300" height="200" name="ultrastats_logo" align="center">'},
{:text=>'<title>UltraStats :: Critical Error occured</title>'},
{:version=>/ &nbsp;<a href="http:\/\/www.ultrastats.org[\/]?" target="_blank">Ultrastats<\/a> Version ([\d\.]+)/i},
]
end
