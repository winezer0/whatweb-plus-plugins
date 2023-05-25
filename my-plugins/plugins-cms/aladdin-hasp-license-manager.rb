Plugin.define do
name "aladdin-hasp-license-manager"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Aladdin HASP License Manager"
website "http://www3.safenet-inc.com/support/hasp/enduser.aspx#lm"
matches [
{:search=>"headers", :text=>'HASP'},
{:search=>"headers[server]", :version=>/^HASP LM\/([^\s]+)$/},
]
end