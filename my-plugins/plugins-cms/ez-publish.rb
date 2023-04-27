Plugin.define do
name "eZ-Publish"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "eZ Publish is an Open Source Content Management System chosen by thousands of enterprises and organizations world wide."
website "http://ez.no/"
dorks [
'Admin intitle:"eZ publish administration"'
]
matches [
{:regexp=>/^eZ Publish/, :search=>'headers[x-powered-by]'},
{:regexp=>/eZ Publish/, :search=>'body'},
{:search=>"all", :text=>'eZ Publish'},
{:search=>"headers", :text=>'eZSessionCookie'},
{:search=>"headers[x-powered-by]", :regexp=>/^eZ [p|P]ublish/},
{:text=>"topmargin=\"6\" marginheight=\"6\" leftmargin=\"6\" marginwidth=\"6\" onload=\"MM_preloadImages('/admin/images/ezpublish/redigerminimrk.gif','/admin/images/ezpublish/slettminimrk.gif','/admin/images/ezpublish/downloadminimrk.gif')\">"},
{:text=>'<link rel="stylesheet" type="text/css" href="/admin/templates/ezpublish/style.css" />'},
{:text=>'<title>eZ publish administration</title>'},
{:text=>'eZ publish administration'},
]
end
