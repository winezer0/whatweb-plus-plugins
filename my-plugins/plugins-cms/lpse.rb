Plugin.define do
name "LPSE"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Electronic Procurement Service (Layanan Pengadaan Secara Elektronik - LPSE) - established by the Indonesian Ministry, Institution, College and state/local governments to facilitate procurement of government goods and services electronically."
website "http://www.lkpp.go.id/v2/content.php?mid=2580235452"
dorks [
'inurl:"/eproc/app"'
]
matches [
{:search=>"headers[location]", :regexp=>/^(https?:\/\/[^\/]+)?\/eproc\/app/},
{:text=>'<link rel="stylesheet" type="text/css" href="/eproc/assets/application.css"/>'},
]
end
