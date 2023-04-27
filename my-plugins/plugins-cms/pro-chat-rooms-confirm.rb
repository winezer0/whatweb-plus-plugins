Plugin.define do
name "pro-chat-rooms-confirm"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "An Ideal Solution For Web Conferencing, Dating and all Online Communities."
website "http://www.prochatrooms.com/"
dorks [
'"Pro Chat Rooms" "Please enter your login details below." "Select Room"'
]
matches [
{:text=>"var loginNameErrorChr = 'Your username has special characters.<br>These characters are not allowed,<br>!@#$\%SPC^&*()+=-[]\&#39;;,./{}"},
{:text=>'	showError("char_error", "Sorry, Username is already registered.");'},
{:text=>'<title>Pro Chat Rooms</title>'},
{:text=>'<tr id="doPasswordBox"><td>Password:</td><td><input type="password" name="password" id="password" value="" onblur="def(\'password\')" class="uInput"/></td></tr>'},
{:version=>/<img src="images\/chat.gif" border="0" alt="Pro Chat Rooms v([\d\.]+)" title="Pro Chat Rooms v([\d\.]+)" \/>/},
]
end
