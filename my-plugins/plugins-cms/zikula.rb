Plugin.define do
name "Zikula"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zikula is a Web Application Toolkit, which allows you to run impressive websites and build powerful online applications."
website "http://zikula.org"
dorks [
'"Powered by Zikula"'
]
matches [
{:name=>'meta generator - full',
:text=>'<meta name="generator" content="Zikula Application Framework - http://zikula.de" />'},
{:name=>'meta generator de',
:text=>'<meta name="Generator" content="Zikula - http://zikula.de" />'},
{:name=>'meta generator',
:text=>'<meta name="Generator" content="Zikula - www.zikula.org" />'},
{:name=>'powered by community text',
:text=>'<a href="http://community.zikula.org/" title="Powered by Zikula">Zikula</a>'},
{:name=>'powered by text',
:text=>'Powered by <a href="http://www.zikula.org">Zikula</a>'},
]
end
