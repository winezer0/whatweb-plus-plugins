Plugin.define do
name "freejoomlas.com"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FreeJoomlas.com - We provide free hosting for your Joomla portals. It is absolutely FREE. Moreover, we provide FREE subdomains (YOURNAME.FreeJoomlas.com) and UNLIMITED data transfer."
website "http://www.freejoomlas.com/"
matches [
{:text=>'<a title="free joomla hosting" href="http://freejoomlas.com'},
{:text=>'Free <a href="http://joomla.org" target=_blank>Joomla!</a> hosting powered by  <a href="http://freejoomlas.com"> FreeJoomlas.com </a>', :module=>"Joomla"},
]
end
