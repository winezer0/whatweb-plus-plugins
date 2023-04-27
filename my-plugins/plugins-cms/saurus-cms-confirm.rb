Plugin.define do
name "saurus-cms-confirm"
authors [
"Brendan Coles <bcoles@gmail.com>", 
]
version "0.1"
description "Web publishing system combining daily content management features with site administration and development tools."
website "http://www.saurus.info/"
dorks [
'"powered by saurus cms"'
]
matches [
{:name=>'GHDB: "powered by saurus cms"',:certainty=>75,:ghdb=>'"powered by saurus cms"'},
{:name=>'default favicon html',:text=>'<link rel="shortcut icon" type="image/x-icon" href="/extensions/saurus4/images/favicon.ico">'},
{:name=>'meta generator',:regexp=>/<meta name="Generator" content="Saurus CMS"[\ \/]*>/i},
{:name=>'meta powered by',:text=>'<meta name="Powered_by" content="Saurus CMS">'},
{:name=>'powered by default',:text=>'<p>Saiti jooksutab <a title="Sisuhaldustarkvara" target="_blank" href="http://www.saurus.ee">Saurus CMS</a>'},
{:text=>'<a href="?op=sitemap" title="Sisukaart">Sitemap</a></p>'},
{:text=>'<a title="Sisukaart" href="?op=sitemap">Sisukaart</a></p>'},
{:text=>'<p>Powered by <a href="http://www.saurus.info" target="_blank" title="Sisuhaldustarkvara">Saurus CMS</a>'},
]
end
