Plugin.define do
name "PHP-Mall"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP Mall (formerly iBoutique.MALL) is a powerful and flexible multi vendors mall solution."
website "http://www.netartmedia.net/mall"
dorks [
'"powered by PHP Mall"',
'"powered by iBoutique.MALL"'
]
matches [
{:text=>'<span class="price_style"><span class=price_style>'},
{:text=>'<td align="right"><input type=password class="login_form_text_field" name="Password"></td>'},
{:text=>'Powered by <a href="http://www.netartmedia.net/mall" target="_blank">PHP Mall</a>'},
{:text=>'Powered by <a href="http://www.netartmedia.net/mall">iBoutique.MALL</a>'},
]
end
