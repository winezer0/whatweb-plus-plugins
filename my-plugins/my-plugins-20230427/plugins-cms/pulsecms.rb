Plugin.define do
name "PulseCMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Manage Content, Simply. Pulse is a simple CMS designed for small websites. It enables you to add content management to an existing site in five minutes."
website "http://pulsecms.com/"
dorks [
'intitle:"Pulse Content Manager" "Pulse" "CMS" "Password" "Login"'
]
matches [
{:text=>'<body id="login-page" onload="document.login.mpass_pass.focus()">'},
{:text=>'<img src="img/new-logo.png" alt="Pulse CMS">'},
{:text=>'<input type="password" size="27" name="mpass_pass">'},
{:text=>'<title>Pulse Content Manager</title>'},
{:url=>"img/new-logo.png", :md5=>"079d0b95c76564c1bb450650f17c3e7f"},
{:url=>"img/new-logo.png", :md5=>"652807728bfb1cd7ffba4a5d40c4e374"},
]
end
