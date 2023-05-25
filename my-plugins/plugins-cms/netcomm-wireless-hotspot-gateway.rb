Plugin.define do
name "NetComm-Wireless-HotSpot-Gateway"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NetComm Hotspot gateway device - http://www.netcomm.com.au/products/hotspots"
dorks [
'intitle:"Wireless Hotspot Gateway" "Welcome To Administrator Login Page"'
]
matches [
{:certainty=>25, :url=>"/", :regexp=>/if \(now < 946685000 \)[\s]+\{[\s]+alert\("Warning! The system time is wrong and may cause the inaccuracy of authentication and billing\. Please refer to the user manual to set up the correct system time\."\);/},
{:certainty=>25, :url=>"/", :text=>'<td colspan="8" align="center" background="imgs_login/login_r6_c7.gif"><font class="loginmsg"><strong>Welcome To Administrator Login Page<br> Please Enter Your User Name and Password To Sign In.</strong></font>&nbsp;</td>'},
{:model=>"HS1100", :url=>"/imgs_login/login_r3_c4.gif", :md5=>"c2ad9dc7eefb06f310782039011bd508"},
]
end
