Plugin.define do
name "web-wiz-rich-text-editor"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web Wiz Rich Text Editor"
website "http://www.richtexteditor.org/"
dorks [
'inurl:"RTE_popup_file_atch.asp" ext:asp'
]
matches [
{:search=>"all", :text=>'Web Wiz Rich Text Editor'},
{:text=>'<form method="post" action="RTE_popup_file_atch.asp" name="frmImageInsrt">'},
{:version=>/<\!\-\-\/\/\s+\/\* [^\s]+\s+Software: Web Wiz Rich Text Editor\(TM\) ver\. ([^\s]+)/},
{:version=>/<a href="http:\/\/www\.richtexteditor\.org" target="_blank" style="font-size:10px">Web Wiz Rich Text Editor<\/a> version ([^<]+)<\/span><\/td>/},
]
end
