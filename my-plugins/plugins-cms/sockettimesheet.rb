Plugin.define do
name "SocketTimesheet"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP Timesheet web application"
website "http://www.sockettimesheet.com/"
matches [
{:text=>"alert('You Are Using '+browser+' Version '+version+', a Non-Tested Browser For This Application. Currently Supported Browsers Are:\\n\\n1. Internet Explorer 6 and Above\\n2. Firefox 2 and Above\\n3. Netscape 8 and Above\\n\\nIf You Experience Any Problem, Please Change To The Supported Browser As Listed Above. Thank You.');", :version=>"3.x"},
{:text=>"alert('You Are Using '+browser+', a Non-Supported Browser For This Application\\nCurrently Supported Browsers Are:\\n1. Internet Explorer\\n2. Firefox (with IETab Enabled)\\n\\nSome Critical Functionalities May Not Work With '+browser);", :version=>"<= 2.x"},
{:version=>/<td valign="top" align="left"><img src=login_images\/index_01.gif><\/td><td valign="bottom" nowrap class="td_title" width="100%">v ([\d\.]+)<\/td>/},
]
end
