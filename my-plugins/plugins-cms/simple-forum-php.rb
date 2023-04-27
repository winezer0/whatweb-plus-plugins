Plugin.define do
name "Simple-Forum-PHP"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Simple Forum PHP is a script that is very easy to install and administer. Visitors to your website will be able to post new topics or discuss and reply other topics."
website "http://www.simpleforumphp.com/"
dorks [
'intitle:"Simple Forum PHP script - Administration"'
]
matches [
{:text=>".php?act=new\" style='font-weight:bold;color:#22229C;font-family:Verdana;font-size:14px;'>Create Topic</a><br /><br />"},
{:text=>'<td class="userpassfield"><input type="submit" name="button" value="Login" class="loginButon" /></td>'},
{:text=>'<title>Simple Forum PHP script - Administration</title>'},
]
end
