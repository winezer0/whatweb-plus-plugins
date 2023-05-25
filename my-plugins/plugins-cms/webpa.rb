Plugin.define do
name "WebPA"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebPA is an open source online peer assessment tool that enables every team member to recognise individual contributions to group work."
website "http://www.webpaproject.com/"
dorks [
'intitle:"WebPA OS" "Web-PA Login"'
]
matches [
{:md5=>"4bfb4898e9927666d6d5a35c7570a960", :url=>"/images/tool/appbar_webpa_logo.png"},
{:regexp=>/<iframe src="https?:\/\/[^\/]+\/keep_alive\.php" height="1" width="1" style="display: none;">keep alive<\/iframe>/},
{:string=>/<td align="right"><div id="inst_logo"><img src="[^"]+" alt="([^"]*)" \/><\/div>/},
]
end
