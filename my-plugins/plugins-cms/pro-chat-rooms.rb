Plugin.define do
name "pro-chat-rooms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Pro Chat Rooms'},
{:text=>"var loginNameErrorChr = 'Your username has special characters.<br>These characters are not allowed,<br>!@#$\%SPC^&*()+=-[]\&#39;;,./{}"},
{:text=>"var loginNameErrorChr = 'Your username has special characters.<br>These characters are not allowed,<br>!@#$\%SPC^&*()+=-[]\&#39;;,./{}|&#34:<>?.<br>Please remove them and try again.';"},
{:text=>'	showError("char_error", "Sorry, Username is already registered.");'},
{:text=>'<title>Pro Chat Rooms</title>'},
{:text=>'<tr id="doPasswordBox"><td>Password:</td><td><input type="password" name="password" id="password" value="" onblur="def(\'password\')" class="uInput"/></td></tr>'},
{:version=>/<img src="images\/chat.gif" border="0" alt="Pro Chat Rooms v([\d\.]+)" title="Pro Chat Rooms v([\d\.]+)" \/>/},
]
end