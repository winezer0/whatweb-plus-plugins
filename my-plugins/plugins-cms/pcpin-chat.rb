Plugin.define do
name "PCPIN-Chat"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PCPIN Chat is a powerful and secure professional instant messaging system written in PHP and MySQL. It has large ammount of features and highly customizable. PCPIN Chat was written with security considerations in mind, so there is only one public discovered vulnerability in a default configuration since more than 5 years!"
website "http://www.pcpin.com/?view=Projects"
dorks [
'"powered by PCPIN.com" -dork -exploit'
]
matches [
{:regexp=>/<INPUT type="submit" class="buttons" value="[^"]+" onClicK="document.loginform.register.value=0; document.loginform.lostpassword.value=0">/},
{:text=>"<!-- Please don't remove next line. Thank You! -->"},
{:text=>'<a href="http://www.pcpin.com" style="font-size:10; color:#990000;" target="_blank">Powered by PCPIN.com</a>'},
{:text=>'Powered by <a href="http://www.pcpin.com/" target="_blank" title="Powered by PCPIN Chat">PCPIN Chat</a>'},
]
end
