Plugin.define do
name "VidiScript"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "VidiScript - video sharing script"
website "http://www.VidiScript.com"
dorks [
'"powered by VidiScript"'
]
matches [
{:text=>"<a href='http://www.VidiScript.com'><b>Free Video Script</b></a>&nbsp;Powered By&nbsp;<a href='http://www.VidiScript.com'><b>VidiScript.com</b></a>"},
{:text=>'<span  style="font-size:12px"><a href="http://www.VidiScript.com"><b>Free Open Source Video Script</b></a>&nbsp;Powered By&nbsp;<a href="http://www.VidiScript.com"><b>VidiScript.com</b></a> '},
]
end
