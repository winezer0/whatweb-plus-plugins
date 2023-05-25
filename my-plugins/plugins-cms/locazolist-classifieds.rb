Plugin.define do
name "LocazoList-Classifieds"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Locazolist v2.02b is a text based classifieds ad system based on ASP and Microsoft SQL Server 2005. Locazolist v2 is known as the first and still only ASP based 'craigslist clone script' in the web since its development beginning in late 2005."
website "http://www.locazolist.com/"
dorks [
'"powered by LocazoList" -exploit'
]
matches [
{:regexp=>/Powered by <a href='http:\/\/www.locazo[a-z]{0,4}.com[\/]?' style='font-size:10px; color:black'>Locazolist<\/a> Copyright &copy; [0-9]{4}<\/font>/},
{:text=>'<link rel="stylesheet" href="includes/lczFonts.css" type="text/css">'},
{:version=>/<br><br><br><br><font face='verdana' size='1'>Powered by LocazoList v([0-9a-z\.]+)<br>Copyright [0-9]{4} <a href='http:\/\/www.locazo.com\/applications'>Locazo.com<\/a><\/font>/},
{:version=>/<title>LocazoList Classifieds v[0-9a-z\.]+ - powered by LocazoList ([0-9a-z\.]+)<\/title>/},
]
end
