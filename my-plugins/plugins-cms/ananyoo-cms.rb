Plugin.define do
name "Ananyoo-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "One of the most user friendly and highly accessible Content Management Systems on the internet till date. This is a feature rich and powerful online CMS which is mainly suitable for universities, governmental and educational sites but apart from this, you can also turn this flexible CMS into a very modern Web2.0 Social Networking Website."
website "http://www.anblik.com/store/php-scripts/ananyoo-accessible-cms.html"
matches [
{:certainty=>75, :text=>'<meta name="generator" content="http://www.ananyoo.com" />'},
{:text=>'<meta name="copyright" content="Copyright 2003-2008, Ananyoo CMS, a Anblik.com Project." />'},
{:text=>'content="http://www.ananyoo.com'},
]
end
