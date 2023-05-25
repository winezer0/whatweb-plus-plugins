Plugin.define do
name "mailsite-express"
authors [
"winezero",
]
version "0.1"
matches [
{:certainty=>50, :regexp=>/<!-- This software is copyright [0-9 ,\.]+ Rockliffe systems, Inc. -->/},
{:regexp=>/<font face="arial" size="1">MailSite Express <br> version [0-9\.]+<\/font>/},
{:search=>"all", :text=>'MailSite Express'},
{:text=>'<b>MailSite <em>Express</em> Login</b>'},
{:text=>'<title>MailSite Express</title>'},
{:text=>'onSubmit="OpenExpress(document.ExpressLogin)"'},
]
end