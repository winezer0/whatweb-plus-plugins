Plugin.define do
name "ManageEngine-DeviceExpert"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DeviceExpert is a web.based, multi vendor network change, configuration and compliance management (NCCCM) solution for switches, routers, firewalls and other network devices."
website "http://www.manageengine.com/products/device-expert/"
dorks [
'intitle:"ManageEngine DeviceExpert" "Best viewed in IE 7.0 and above"'
]
matches [
{:md5=>"f159ea86b41bc4908398a2d27f333df5"},
{:text=>'<SCRIPT language="javascript" src="/javascript/deviceexpert.js"></SCRIPT>'},
{:text=>'<input type="hidden" name="AUTHRULE_NAME" id="AUTHRULE_NAME" value="Authenticator">'},
]
end
