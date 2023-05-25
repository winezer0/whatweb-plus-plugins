Plugin.define do
name "PHP121"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP121 is a web based instant messenger - written entirely in PHP. This means that it will work in any browser on any operating system including Windows and Linux, anywhere! If traditional messaging programs like MSN Messenger or Yahoo! Messenger are blocked at your school or workplace, PHP121 will still work."
dorks [
'"Powered by PHP121"'
]
matches [
{:text=>'<title>PHP121 - New User</title>'},
{:text=>'<title>PHP121 - Please login or register</title>'},
{:version=>/<center>Powered by <a target="_blank" style="TEXT-DECORATION: none; COLOR: #000066; FONT-SIZE: 10px" href="http:\/\/www.php121.com"><U>PHP121<\/U><\/a> v([\d\.]+)<\/center>/},
]
end
