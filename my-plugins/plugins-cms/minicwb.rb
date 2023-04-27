Plugin.define do
name "minicwb"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "miniCWB is a Content Management Software and is meant to satisfy the needs of those who do not have access to a database, but want a dynamic website, editable through admin area and most of all, based on a FREE solution. The most important aspect about this software is that it is search engine optimised, and thus very popular."
website "http://www.mini-open-cms.com/"
dorks [
'"powered by MiniCWB"'
]
matches [
{:text=>"<a href='http://www.mini-open-cms.com' rel='external'>Powered by miniCWB</a>"},
{:text=>'<!--Copyright link. You may not remove it if you use free GPL licence. Refer to ./LICENSE file for more-->'},
{:text=>'<meta name="Author" content="GraFX srl - http://www.grafxsoftware.com" />'},
{:text=>'<p>Powered by <a href="http://www.grafxsoftware.com/" class="text" title="Powered by CWB - small Open CMS - Content Management System">CWB</a>'},
]
end
