Plugin.define do
name "dvbbs"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Dvbbs'},
{:text=>"dispbbs.asp?boardid=",:name=>"bbs"},
{:text=>"dispuser.asp?name=",:name=>"name"},
{:text=>"href=\"skins/dv_wnd.css",:name=>"CSS"},
{:url=>"dv_rss.asp?s=xhtml",:version=>/Version ([\d\.]+)/m},
{:version=>/<a href = \"http:\/\/www.dvbbs.net\/download.asp\" target = \"_blank\">Version ([\d\.]+)/},
]
end