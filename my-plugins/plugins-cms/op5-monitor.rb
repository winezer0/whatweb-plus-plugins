Plugin.define do
name "op5-monitor"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Op5-Monitor - Enterprise Open Source Monitoring"
website "https://www.op5.com/demo"
dorks [
'inurl:"monitor/index.php/default/show_login"'
]
matches [
{:text=>'<link type="text/css" rel="stylesheet" href="/monitor/application/views/themes/default/css/default/common.css" />'},
{:text=>'<title>op5 Monitor login</title>'},
{:url=>"/monitor/application/views/themes/default/icons/16x16/favicon.ico", :md5=>"7ed48f7e1e0b8d6ead4317f84b64ab86"},
]
end
