Plugin.define do
name "sNews"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "sNews is a completely free, standards compliant, PHP and MySQL driven Content Management System."
website "http://www.snewscms.com/"
dorks [
'"powered by sNews"'
]
matches [
{:search=>'body', :regexp=>/sNews/},
{:text=>'<meta name="description" content="sNews CMS" />', :certainty=>75},
{:text=>'<p><label for="uname">Username</label>:<br /><input type="text" name="uname" id="uname" class="text" value="" /></p><p><label for="pass">Password</label>:<br /><input type="password" name="pass" id="pass" class="text" value="" /></p>'},
{:text=>'<p>This site is powered by <a href="http://snewscms.com/" title="sNews CMS" onclick="target=\'_blank\';">sNews</a>'},
{:text=>'Powered by <a href="http://snews.solucija.com" title="Single file CSS and XHTML valid CMS">sNews</a>'},
{:text=>'Powered by <a href="http://snewscms.com/" title="Single file CMS">sNews</a>'},
{:text=>'powered by <a href="http://www.solucija.com/home/snews/" title="sNews">sNews</a>'},
{:version=>/<meta name="Generator" content="sNews ([\d\.]+)" \/>/},
]
end
