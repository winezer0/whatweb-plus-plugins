Plugin.define do
name "infotrak-oil-commander"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web-based system for managing oil samples through the laboratory process and presenting the results to customers."
website "http://www.infotrak.com.au/"
dorks [
'intitle:"Login - Powered By: Infotrak\'s Oil Commander"'
]
matches [
{:text=>"<title>Login - Powered By: Infotrak's Oil Commander</title>"},
{:text=>'<div id="pnlContent_Shadow" style="background-color:DarkGray;overflow:hidden;position:absolute;left:23;top:163;z-index:-1;width:98%;height:700 ;">'},
{:text=>'<span id="lblMessage">After entering your email address and clicking on Continue, an email with your login details will be sent. Please allow some time for the email. If you do not receive it please contact your dealership. </span>'},
]
end
