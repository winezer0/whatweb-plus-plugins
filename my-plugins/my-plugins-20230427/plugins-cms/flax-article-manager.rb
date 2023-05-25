Plugin.define do
name "flax-article-manager"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Managing large dynamic websites has always been a difficult task for several webmasters, we have developed Flax Article Manager keeping you in mind. By using this system one can easily manage their news and/or articles quite easily."
website "http://www.flaxweb.com/products/articles"
dorks [
'intitle:"Flax Article CMS Administration Panel"'
]
matches [
{:text=>'/images/flaxweb_newsletter_bg.gif" bgcolor="#FFFFFF" valign="top"> '},
{:text=>'<b><a href="http://www.flaxweb.com/products/articles"><font color="#666666">Article '},
{:text=>'<td width=67%><font color=#FFFFFF><a href=admin.php class=htext>Flax '},
{:text=>'<td><a href="http://www.flaxweb.com/products/articles">For more details about Flax article manager (CMS) please click '},
{:text=>'<title>Flax Article CMS Administration Panel</title>'},
{:text=>'recent updates for Flax Article Manager</font></b></a></div>'},
{:version=>/[\s]+Copyright [0-9]{4} &copy; Flax Article Manager v([\d\.]+)<\/div>/},
]
end
