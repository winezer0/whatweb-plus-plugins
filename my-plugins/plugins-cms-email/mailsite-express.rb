Plugin.define do
name "mailsite-express"
authors [
"Andrew Horton",
]
version "0.2"
description "Webmail in ASP. Versions < 6.1.2 insecure http://marc.info/?l=bugtraq&m=113053680631151&w=2 -"
website "http://www.mailsite.com/products/express-webmail-server.asp"
dorks [
'intitle:"MailSite Express" "MailSite Express Login"'
]
matches [
{:certainty=>50, :regexp=>/<!-- This software is copyright [0-9 ,\.]+ Rockliffe systems, Inc. -->/},
{:regexp=>/<font face="arial" size="1">MailSite Express <br> version [0-9\.]+<\/font>/},
{:text=>'<b>MailSite <em>Express</em> Login</b>'},
{:text=>'<title>MailSite Express</title>'},
{:text=>'onSubmit="OpenExpress(document.ExpressLogin)"'},
]
end