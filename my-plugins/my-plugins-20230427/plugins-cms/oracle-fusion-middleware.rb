Plugin.define do
name "Oracle-Fusion-Middleware"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle Fusion Middleware (OFM)"
website "http://www.oracle.com/au/products/middleware/index.html"
matches [
{:search=>"headers[server]", :regexp=>/^Oracle-Fusion-Middleware/},
{:search=>"headers[server]", :version=>/^Oracle-Fusion-Middleware\/([^\s]+ \([^\)]+\))/},
{:text=>'<link href="css/fmw_bottom_area.css" rel="stylesheet" type="text/css">'},
{:text=>'<title>Welcome to Oracle Fusion Middleware</title>'},
{:version=>/<div id="welcome_text">TO ORACLE<strong> FUSION MIDDLEWARE ([^\s^<]+)<\/strong> <\/div>/},
]
end
