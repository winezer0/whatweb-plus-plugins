Plugin.define do
name "invision-power-board"
authors [
"Andrew Horton",

]
version "0.3"
description "Invision Power Board - PHP Web Forum"
website "http://www.invisionpower.com/"
dorks [
'intitle:"Powered by Invision Power Board"'
]
matches [
{:certainty=>50, :text=>"<a href='#j_content' title='Jump to content' accesskey='m'>Jump to content</a>"}, #'

{:regexp=>/<script [^>]+src='[^']+\/ipb\.js/},
{:regexp=>/&copy; [0-9]+ &nbsp;<a href='http:\/\/www\.invisionpower\.com'[^>]*>IPS, <abbr title='Incorporated'>Inc<\/abbr></},
{:regexp=>/&copy; [0-9]+ &nbsp;<a href='http:\/\/www\.invisionpower\.com'[^>]*>IPS, Inc</},
{:regexp=>/<a href="[^"]+index\.php\?s=[a-z0-9]+&amp;act=Login&amp;CODE=[0-9]+">Log In<\/a>/},
{:regexp=>/<div [^>]*class='copyright'>Powered by <[^>]+>Invision Power Board<\/a>/},
{:regexp=>/<script [^>]*src='[^']+\/ipb_global\.js'>/},
{:regexp=>/<script type="text\/javascript" src='[^']*ips_xmlhttprequest\.js'><\/script>/},
{:text=>"Powered By <a href='http://www.invisionboard.com' style='text-decoration:none' target='_blank'>IP.Board</a>"},
{:text=>'(Powered by Invision Power Board)</title>'},
{:text=>'<div id="ipbwrapper">'},
{:text=>'index.php?app=core&amp;module=global&amp;section=rss&amp;type=forums&amp;id='},
{:version=>/([0-9\.]+) &copy; 20[0-9]+ &nbsp;<a href='http:\/\/www\.invisionpower\.com'[^>]+>IPS/,  :name=>"powered by 2"},
{:version=>/Invision Power Board<\/a>([^&]+)&copy; 20[0-9]+ &nbsp;<a href='http:\/\/www\.invisionpower\.com'/,  :name=>"powered by 4"},
{:version=>/Invision Power Board<\/a>[\s]+v([0-9\.]+) &copy;/,  :name=>"powered by 3"},
{:version=>/Powered by <a [^>]+>Invision Power Board<\/a>([^&]+) &copy; 20[0-9]+/,  :name=>"powered by 1"},
]
end
