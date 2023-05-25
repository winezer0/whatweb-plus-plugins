Plugin.define do
name "novell-open-enterprise-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Novell Open Enterprise Server"
website "http://www.novell.com/products/openenterpriseserver/"
dorks [
'intitle:"Home - Novell Open Enterprise Server 2" "Novell Open Enterprise Server provides secure, reliable and highly available workgroup services in an open environment"'
]
matches [
{:search=>"all", :text=>'Novell Open Enterprise Server'},
{:string=>/<p id="ftr-copy">&nbsp;&nbsp;&nbsp;&nbsp;&copy; (20[\d]{2}) Novell, Inc\. All Rights Reserved\.<\/p>/},
{:text=>'<!-- This is all just a super-duper redirect to the Welcome page'},
{:text=>'<script type="text/javascript" src="/welcome/inc/flashobj.js"></script> <!-- required for javascript banners from Novell.com -->'},
{:text=>'<title>Home - Novell Open Enterprise Server 2</title>'},
{:version=>/<h1>Novell Open Enterprise Server ([^<]+)<\/h1>\s+<p class="link"><a href="http:\/\/www\.novell\.com\/products\/openenterpriseserver\/">/},
]
end