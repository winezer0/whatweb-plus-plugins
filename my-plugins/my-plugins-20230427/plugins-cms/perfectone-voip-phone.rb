Plugin.define do
name "Perfectone-VOIP-Phone"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Perfectone VOIP phone"
website "http://www.perfectone.nl/"
matches [
{:text=>'<body OnLoad="JavaScript:document.loginform.user.focus();">'},
{:text=>'<font face="Arial" color="#FFFFFF"><b>Login VoIP</b></font></i></td> </tr>'},
{:text=>'<p style="margin-top: 5px"><font face="Arial"><input type=submit value=\'Login\' onClick="return saveChanges()">'},
]
end
