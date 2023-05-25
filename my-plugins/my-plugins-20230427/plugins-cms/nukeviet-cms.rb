Plugin.define do
name "NukeViet-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NukeViet CMS [Vietnamese]"
website "http://nukeviet.vn/en/"
dorks [
'"Powered by NukeViet"'
]
matches [
{:regexp=>/<form class="loginform" method="post" action="[^"^>]*\/admin\/index\.php" onsubmit="return nv_checkadminlogin_submit\(\);">/},
{:text=>'<div id="run_cronjobs" style="visibility: hidden; display: none;">'},
{:version=>/<meta name="generator" content="Nuke[vV]iet v([^\s^"]+)" \/>/},
]
end
