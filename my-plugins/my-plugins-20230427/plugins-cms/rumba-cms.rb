Plugin.define do
name "rumba-cms"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Rumba is a Content Management System (CMS). It is the engine behind your website that simplifies the creation, management, and sharing of content. Use Rumba as CMS, blog, site of news or personal page."
website "http://rumbacms.com/"
dorks [
'"powered by Rumba CMS"'
]
matches [
{:text=>' <center><small><a href=http://rumba.net.ru>Powered by Rumba CMS</a></small></center></body>'},
{:text=>' <center><small><a href=http://rumbacms.com>Powered by Rumba CMS</a></small></center></body>'},
{:text=>' <meta name="generator" content="Rumba Easy http://rumba.net.ru" />'},
{:text=>' <meta name="generator" content="Rumba Easy http://rumbacms.com" />'},
{:text=>' <meta name="generator" content="Rumba Wiki http://rumba.net.ru/" />'},
{:text=>' <meta name="generator" content="http://rumba.net.ru" />'},
{:text=>' Powered by <a rel="nofollow" target="_blank" href="http://rumba.net.ru/">Rumba CMS</a></p>'},
{:text=>'<meta name="Generator" content="http://rumba.net.ru" />'},
]
end
