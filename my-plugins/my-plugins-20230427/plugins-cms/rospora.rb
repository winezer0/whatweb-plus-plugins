Plugin.define do
name "rospora"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Spora The Burning Crusade Edition Means RoSpora - web script build for MaNGOS Free MMORPG Server. Revolution of Simple Page Of Registration of Accounts"
website "http://code.google.com/p/rospora/"
matches [
{:text=>"<li>This server supports only 2.2.3 clients<br><li>1x Quest XP , 1x Kill XP , 1x Discovery XP"},
{:text=>'<link rel="Shortcut Icon" href="img/wowlogoanim.gif" type="image/gif">'},
]
end
