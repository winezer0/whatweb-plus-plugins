Plugin.define do
name "dmxready-portfolio-manager"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DMXReady Portfolio Manager is a fast and easy way to organize and display your online portfolio."
website "http://www.dmxready.com/?product=portfolio-manager"
dorks [
'inurl:inc_portfoliomanager.asp'
]
matches [
{:regexp=>/<form action="[^"]*\/applications\/PortfolioManager\/inc_portfoliomanager\.asp" method="POST" name="login" onSubmit="YY_checkform\('login','admin_username_portfoliomanager','#q','0','Please provide Username','admin_username_portfoliomanager','#q','0','Please provide Password'\);return document.MM_returnValue"/i},
{:text=>"<a href=\"javascript:;\" class=\"menu_linkB\" onClick=\"window.open('/applications/PortfolioManager/components/inc_slideshowmanager.asp?index=0','send','toolbar=no,location=no,status=yes,menubar=no,copyhistory=yes,scrollbars=yes,width=700,height=520')\">"},
{:text=>'/css/PortfolioManager/styles_display_page.css'},
{:text=>'<input name="rememberme_portfoliomanager" type="checkbox"  id="rememberme_portfoliomanager"   value="yes">'},
{:text=>'<link href="/css/PortfolioManager/styles_display_page.css" rel="stylesheet" type="text/css">'},
{:text=>'rememberme_portfoliomanager'},
]
end
