Plugin.define do
name "WordFusion"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zumesoft WordFusion - Enterprise document assembly and automation software"
website "http://www.zumesoft.com/"
dorks [
'intitle:"WordFusion.Web" intext:"Get Microsoft Silverlight"'
]
matches [
{:regexp=>/<head id="Head"><title>\s+WordFusion\.Web\s+\<\/title>/},
{:text=>'<param name="source" value="ClientBin/WordFusion.Web.xap">'},
]
end
