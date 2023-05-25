Plugin.define do
name "PowerMTA"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PowerMTA - email gateway software (SMTP server) that makes it easy for senders to adopt the latest authentication specifications (SenderID, SPF, Domain Keys and DKIM) and comply with policies for accountable outbound email delivery."
website "http://www.port25.com/"
matches [
{:certainty=>25, :search=>"headers[www-authenticate]", :regexp=>/^Basic realm="PowerMTA"$/},
{:search=>"all", :text=>'PowerMTA'},
{:status=>403, :text=>"<html><body>Access denied.  Please consult the http-access directive in the User's Guide for more information.</body></html>"},
]
end
