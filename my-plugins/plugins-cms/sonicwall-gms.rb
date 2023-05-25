Plugin.define do
name "SonicWALL-GMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The SonicWALL Global Management System (GMS) provides organizations of any size, distributed enterprises and service providers with a flexible, powerful and intuitive solution to centrally manage and rapidly deploy SonicWALL appliances and security policy configurations. SonicWALL GMS also provides centralized real-time monitoring, and comprehensive policy and compliance reporting."
website "http://www.sonicwall.com/emea/488_3042.html"
dorks [
'intitle:"SonicWALL GMS Login" "User" "Password"'
]
matches [
{:text=>'<body background="images/gray_waves.back.gif" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="onLoadFunc()">'},
{:url=>"/sgms/login", :text=>'<title>SonicWALL GMS Login Screen</title>'},
{:url=>"/sgms/login", :text=>'<title>SonicWALL GMS Login</title>'},
{:version=>/<P><B>SonicWALL Global Management System v([^\s^<]+)/},
{:version=>/<P><B>SonicWALL Universal Management Suite v([^\s^<]+)<\/B>/},
{:version=>/<TITLE>SonicWALL Global Management System Version ([^\s^<])[\s]?<\/TITLE>/},
{:version=>/<TITLE>SonicWALL Universal Management Suite v([^\s^<]+)<\/TITLE>/},
]
end
