Plugin.define do
name "深信服SSL-VPN" 
authors [
"winezero",

]
version "0.1"
matches [
{:mmh3=>'-1810847295'},
{:mmh3=>'-1926484046'},
{:mmh3=>'123821839'},
{:regexp=>/loginPageSP\/loginPrivacy.js|\/com\/css\/installClient.css/},
{:regexp=>/login_psw.cs|SSL[\s]{0,3}VPN系统/},
{:search=>"headers", :text=>'TWFID'},
{:text=>'login_psw.csp'},
{:url=>'/com/images/ec-logo.png' , :md5=>'fc383988e32f7f00afc8e96e8dad1b9a'},
{:url=>'/com/installClient.html' , :text=>'<title>欢迎使用SSL VPN</title>'},
]
end