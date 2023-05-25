Plugin.define do
name "zeus-traffic-manager"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Zeus Traffic Manager - Application Delivery Controller - allows you to deliver fast, secure and available applications to your users at minimum infrastructure cost across any combination of physical, virtual and cloud infrastructures."
website "http://www.zeus.com/products/traffic-manager/index.html"
passive do
m=[]
m << { :name=>"Set-Cookie" } if @headers["set-cookie"] =~ /^X-Mapping-[a-z]{8}=([A-F\d]{32}|deleted);/
m
end
matches [
{:text=>'<img src="images/warning.gif">Warning: Installation directory exists ZEUSCART ROOT DIRECTORY/install. Please remove/rename this directory for security reasons.'},
{:text=>'<title>:: Zeuscart Admin Panel</title>'},
{:text=>'Powered by <a href="http://www.ajsquare.com/products/ecom/" style="color:#716f6f;" target="_blank">ZeusCart</a>'},
{:version=>/<title>[\s]+ZeusCart V([\d\.]+)[\s]+<\/title>/},
]
end