Plugin.define do
name "Acidcat-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Acidcat ASP CMS"
website "http://www.acidcat.com/"
dorks [
'"Powered by Acidcat CMS"'
]
matches [
{:certainty=>75, :text=>'<table cellspacing="0" class="ac_admin_main">'},
{:text=>"<br><center><table border=1 class=errorTable><tr><td class='login_view'><img src=images/acidcat_logo.gif><td colspan=1 class='login_view'><b>Acidcat CMS Error"},
{:text=>'/css/admin_import.css'},
{:text=>'<!-- Start Acidcat CMS footer information. Note: this code is not to be edited or removed in the free version. -->'},
{:text=>'<link href="admin/css/admin_import.css" rel="stylesheet" type="text/css" />'},
{:text=>'<td class="ac_footer_menu">&nbsp;<br /></td></tr></table></td>'},
{:text=>'<td class="ac_footer_menu">&nbsp;<br /><br /></td></tr></table></td>'},
{:text=>'<tr><td colspan="2" valign="top" class="ac_menuleftbg" ><table cellspacing="0" border="0"><tr>'},
{:text=>'<tr><td colspan="2" valign="top" class="ac_menuleftbg" ><table width="100%" cellspacing="0" border="0"><tr>'},
{:text=>'Powered by Acidcat CMS'},
{:text=>'Start Acidcat CMS footer information'},
{:version=>/<a href="http:\/\/www.acidcat.com">Powered by Acidcat CMS v ([\d\.a-z]+)<\/a>/},
]
end
