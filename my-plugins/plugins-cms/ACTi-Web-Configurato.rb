Plugin.define do
name "ACTi-Web-Configurato"
authors [
"Brendan Coles <bcoles@gmail.com>", 
]
version "0.2"
description "ACTi Web Configurator - camera web interface"
website "http://www.acti.com/home/index.asp"
dorks [
'intitle:"Web Configurator" "ACTi Corporation All Rights Reserved"'
]
matches [
{:regexp=>/<form name="frm(LOGIN|Config)" method="POST" enctype="multipart\/form-data" action="videoconfiguration\.cgi">/},
{:search=>"all", :text=>'ACTi 监控摄像机'},
{:string=>/<tr class="layout_footer_bgcolor">\s*<td width="776"[^>]*>\s+Copyright@2003-(20[\d]{2}) ACTi Corporation All Rights Reserved/},
{:text=>'ACTi Corporation All Rights Reserved'},
{:text=>'Web Configurator'},
{:version=>/<title>Web Configurator - Version ([^\s]*\s?v[^<]+)<\/title>/},
]
end
