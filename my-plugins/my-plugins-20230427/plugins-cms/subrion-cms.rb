Plugin.define do
name "Subrion-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Subrion CMS unites the functionality of articles script, auto classifieds script, realty classifieds script, and web directory script all in one package."
website "http://www.subrion.com/"
dorks [
'"powered by Subrion CMS"'
]
matches [
{:text=>'Powered by <a href="http://www.subrion.com">Subrion CMS</a>'},
{:text=>'Powered by <strong><a href="http://www.subrion.com/" title="Subrion CMS" target="_blank">Subrion CMS</a>'},
{:text=>'powered by <a href="http://www.subrion.com/" title="Site powered by Subrion CMS">Subrion CMS</a>'},
{:url=>"/favicon.ico",:allhash=>"bc18566dcc41a0ff503968f461c4995a"},
{:version=>/	<meta name="generator" content="Subrion CMS ([\d\.a-zA-Z]+)" \/>/},
{:version=>/	<title>Subrion CMS ([\d\.a-zA-Z]+) - Web Installer<\/title>/},
{:version=>/	Powered by <a href="http:\/\/www.subrion.com\/" title="Classifieds Software">Subrion CMS<\/a> Version ([\d\.a-zA-Z]+)<br \/>/},
]
end
