Plugin.define do
name "synType-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "synType CMS is a free, open source Web Content Management System. synType CMS is fast, secure, stable and easy to learn."
website "http://syntype.org/"
matches [
{:text=>'<meta name="generator" content="synType CMS" />'},
{:text=>'width="150" height="40" border="0" alt="This Web site is powered by synType CMS, the ultimate Content Management System" /></a>'},
]
end
