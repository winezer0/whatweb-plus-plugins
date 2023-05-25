Plugin.define do
name "CmyDocument"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CmyDocument is a Content Management and Document Management application"
website "http://cmydocument.com/"
dorks [
'inurl:"myDoclist.asp" intitle:"CmyDocument"'
]
matches [
{:regexp=>/<td style="white-space: nowrap;"><span class="aspmaker"><a href="myDocview\.asp\?(myDocID|ID)=[\d]+">View<\/a><\/span><\/td>/},
{:text=>'<!-- footer (begin) --><!-- *** Note: Only licensed users are allowed to remove or change the following copyright statement. *** -->'},
{:text=>'<link href="CmyDocument.css" rel="stylesheet" type="text/css">'},
{:text=>'<link href="CmyDocument2.css" rel="stylesheet" type="text/css">'},
{:text=>'<link rel="SHORTCUT ICON" href="icon_cmydoc.ico">'},
{:text=>'<link rel="stylesheet" type="text/css" href="CmyDocument.css">'},
]
end
