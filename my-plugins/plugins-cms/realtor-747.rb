Plugin.define do
name "realtor-747"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "IT747.COM is proudly presenting a property listings management system REALTOR 747 for real estate agents which adopted template based design so that web site designers can fully express their own imagination."
website "http://www.it747.com/realtor747/"
matches [
{:text=>'<body onload="start_realtor747_admin();" onunload="stop_realtor747_admin();">'},
{:version=>/    <a href="http:\/\/www.it747.com\/realtor747" target="_blank"><span style="color: green;">Powered by REALTOR 747 - The Property Listings Management System - Version ([\d\.]+)<\/span><\/a><br>/},
{:version=>/<title>REALTOR 747 - The Property Listings Management System - Administration  - Version ([\d\.]+)<\/title>/},
]
end
