Plugin.define do
name "citrusdb"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CitrusDB is a web based customer care and billing software solution (CC&B) - Requires PHP and MySQL"
website "http://www.citrusdb.org/"
dorks [
'intitle:CitrusDB "Enter your username and password" "username" "password"'
]
matches [
{:certainty=>75, :text=>'<center><table><td valign=top><img src="images/my-logo.png">'},
{:text=>'<INPUT TYPE="SUBMIT" NAME="submit" VALUE="Login"  onclick="password.value = calcMD5(password.value)" class=smallbutton>'},
]
end
