Plugin.define do
name "extmail"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<a href="http://www.extmail.org" title="ExtMail  LinSeek'},
{:text=>'<a href="http://www.linseek.com" title="ExtMail  LinSeek'},
{:url=>'/extmail/default/css/login.css', :text=>'/extmail/default/images/'},
{:url=>'/extmail/images/donate.png', :md5=>'4ad259ed478d330193c0abcab68722c1'},
{:version=>/ExtMail .*? (V.+) Copyright/},
]
end