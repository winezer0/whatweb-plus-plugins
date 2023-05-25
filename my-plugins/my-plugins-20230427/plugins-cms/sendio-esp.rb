Plugin.define do
name "Sendio-ESP"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sendio's E-mail Security Platform, (formerly known as I.C.E. Box) is an appliance solution which eliminates spam and viruses."
website "http://sendio.com/"
matches [
{:text=>'<frameset id="icetopframeset" name="icetopframeset" rows="28,*,20,0,0,0"'},
{:text=>'<link rel="stylesheet" type="text/css" href="/sendio/ice/css/nice.css" />'},
{:url=>"/favicon.ico", :md5=>"0d8eda4e968077705982915e3d874e17"},
{:url=>"/sendio/ice/ui/foot", :string=>/<td width="50%" align="left" valign="middle"><div id="footleft">&nbsp;&copy; (20[\d]{2}) Sendio, Inc\.<\/div><\/td>/},
{:url=>"/sendio/ice/ui/foot", :version=>/<td width="50%" align="right" valign="middle"><div id="footright">Sendio ([\d\.]+ \([^\s^\)]+\)) &mdash/},
]
end
