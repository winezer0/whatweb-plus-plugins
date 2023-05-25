Plugin.define do
name "kolab"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Kolab is a Groupware Solution for Emails, Appointments, Contacts and more. It supports mixed client environments (Outlook/KDE) because of an open storage format. Any email client speaking standard protocols can be served."
website "http://www.kolab.org/"
dorks [
'intitle:"Kolab Groupware login"'
]
matches [
{:md5=>"8b2a22d60ef1352abd1e2e35f711bbf7", :url=>"/favicon.png"},
{:text=>'<div id="toptitle">Kolab Groupware login</div>'},
{:text=>'<meta name="description" content="Kolab Administration Webinterface" />'},
{:text=>'<title>Kolab Groupware login</title>'},
]
end
