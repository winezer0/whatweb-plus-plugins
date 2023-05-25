Plugin.define do
name "MailEnable"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Windows mail server software with webmail, caldav, carddav, antivirus, spam filtering and more."
website "http://www.mailenable.com/"
dorks [
'intitle:"MailEnable - Webmail" "Account Login" "MailEnable"'
]
matches [
{:certainty=>75, :text=>'<title>MailEnable - Webmail</title>'},
{:text=>'</table><!-- loginPanel_shell_table -->'},
{:text=>'<td class="loginPanel_botLeft"><div class="loginPanel_botLeft_div"></div></td>'},
]
end
