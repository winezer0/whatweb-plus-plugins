Plugin.define do
name "PHPCow"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHPCow news publishing content management system - Homepage [offline] : http://www.phpcow.com/"
dorks [
'"powered by PHPCow.com"'
]
matches [
{:text=>'<b>Powered by</b>: <a href="http://www.phpcow.com" target="_blank" style="color: #000000" title="PHPCow news publishing script, content management system">PHPCow.com</a>'},
{:text=>'<b>Powered by</b>: <a href="http://www.phpcow.com" target="_blank" style="color: #000000">PHPCow.com</a>'},
{:text=>'<meta name="Description" content="PHPCow news publishing content management system" />'},
{:text=>'<meta name="Keywords" content="phpcow, news publishing, article publishing, cms" />'},
]
end
