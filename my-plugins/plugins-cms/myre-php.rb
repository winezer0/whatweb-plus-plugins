Plugin.define do
name "MYRE-PHP"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MYREPHP - MYRE Real Estate Software, MYRE Holiday Rental Manager, MYRE Realty Manager and MYRE Classifieds scripts"
website "http://www.myrephp.com/"
dorks [
'"My Last Viewed" "Get e-mail alerts" "MYREPHP"'
]
matches [
{:text=>"<!-- BEGIN: MENU FOOTER don't change anything -->"},
{:text=>"<td align=right><a href='links_view.php'><font class='menu_top'><b><u>My Last Viewed</u></b></font></a>&nbsp;&nbsp;<a href='alert.php?action=register'><font class='menu_top'><b><u>Get e-mail alerts</u></b></font></a>&nbsp;&nbsp;"},
]
end
