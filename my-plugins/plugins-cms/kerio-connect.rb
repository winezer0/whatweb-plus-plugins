Plugin.define do
name "Kerio-Connect"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Kerio Connect (previously Kerio MailServer) is the best email, messaging, collaboration and full groupware single server solution designed for small to medium organizations, offering full support for Outlook, Entourage, Apple Mail and iCal clients and more - Homeage: http://www.kerio.com/connect"
matches [
{:regexp=>/^Kerio/, :search=>"headers[server]"},
{:search=>"headers", :text=>'Kerio Connect'},
{:search=>"headers", :text=>'Kerio MailServer'},
{:version=>/^Kerio (MailServer|Connect) (.+)$/, :offset=>1, :search=>"headers[server]"},
]
end
