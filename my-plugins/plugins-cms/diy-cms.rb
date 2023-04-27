Plugin.define do
name "DiY-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Do It Yourself Content Management System is a feature-rich, php-built, mysql-based, opensource and free CMS."
website "http://www.diy-cms.com/"
dorks [
'"powered by DiY-CMS"',
'intitle:"DIY-CMS Database Error"'
]
matches [
{:text=>"<td valign='middle'><img border='0' src=\"admin_skin/default/images//admin_login.png\"></a></td>"},
{:text=>'<a href="http://www.pghost.eu/14/18/diy_cms-25.html">Powered by DIY-CMS</a>'},
{:text=>'<p><b><a href="http://www.diy-cms.com/" target="_blank">Powered by: DIY-CMS</a></b></p></body></html>'},
{:text=>'<title>DIY-CMS Database Error</title>'},
{:text=>'Powered by: <a href="http://www.diy-cms.com" target="_blank">DIY-CMS</a>'},
{:version=>/<META content="Powered by DiY-CMS ([\d\.]+) [0-9]{4} " name="description">/},
{:version=>/Powered by <a href="http:\/\/www.pghost.eu[^>]+>DIY-CMS v ([\d\.]+)<\/a>/},
]
end
