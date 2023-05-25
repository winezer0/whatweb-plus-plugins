Plugin.define do
name "beef"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "BeEF - Browser Exploitation Framework"
website "http://beefproject.com/"
matches [
{:certainty=>75, :text=>'<title>Browser Exploitation Framework</title>'},
{:regexp=>/<script[^>]+src=['"]?[^>^="'^"]+\/hook\/beefmagic\.js\.php['"]?/, :certainty=>75, :string=>"Hook"},
{:regexp=>/<script[^>]+src=['"]?https?:\/\/[^\/]+\/hook\.js['"]?/, :certainty=>75, :string=>"Hook"},
{:search=>"headers[server]", :version=>/^BeEF ([^\s]+)$/},
{:text=>'<img src="../images/beef.gif" onclick="new Effect.Shake(\'sidebar\');"></div> BeEF</h1>'},
{:url=>"/ui/authentication", :text=>'<div id="centered"><img id="beef-logo" src="/ui/media/images/beef.png" alt="BeEF - The Browser Exploitation Framework" /></div>'},
{:url=>"/ui/media/images/beef.png", :md5=>"5f8cdcd65c5c05f875710f2c10503192"},
]
end
