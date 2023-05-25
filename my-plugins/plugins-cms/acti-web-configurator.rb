Plugin.define do
name "ACTi-Web-Configurator"
authors ["winezer0"]
version "0.2"
description "ACTi Web Configurator - camera web interface"
website "http://www.acti.com/home/index.asp"
dorks [
'intitle:"Web Configurator" "ACTi Corporation All Rights Reserved"'
]
matches [
{:regexp=>/<form name="frm(LOGIN|Config)" method="POST" enctype="multipart\/form-data" action="videoconfiguration\.cgi">/},
{:string=>/<tr class="layout_footer_bgcolor">\s*<td width="776"[^>]*>\s+Copyright@2003-(20[\d]{2}) ACTi Corporation All Rights Reserved/},
{:version=>/<title>Web Configurator - Version ([^\s]*\s?v[^<]+)<\/title>/},
{:search=>"all", :text=>'ACTi 监控摄像机'},
{:text=>'ACTi Corporation All Rights Reserved'},
{:text=>'Web Configurator'},
]
end