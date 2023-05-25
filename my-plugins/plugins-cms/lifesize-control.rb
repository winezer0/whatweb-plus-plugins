Plugin.define do
name "LifeSize-Control"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LifeSize Control is an all-in-one video management software platform that provides centralized management of your entire video conferencing network, including multivendor environments."
website "http://www.lifesize.com/Products/Infrastructure/Management.aspx"
matches [
{:url=>"/", :search=>"headers[location]", :regexp=>/^https?:\/\/[^\/]+\/LifeSizeControl\/ASP\/index\.html$/},
{:url=>"/LifeSizeControl/ASP/index.html", :text=>'<title>LifeSize Control flash check</title>'},
{:url=>"/LifeSizeControl/ASP/index_alternate.html", :text=>'<h3><font color="#999999" face="Arial, Helvetica, sans-serif">You don\'t have the latest version of Adobe Flash Player.</font></h3>'},
{:url=>"/LifeSizeControl/ASP/index_content.html", :string=>/<body bgcolor="#ffffff" onload="loadVersionXML\(\)"><!-- LSC([\d\.]+) - Code added for dynamic version number-->/},
]
end
