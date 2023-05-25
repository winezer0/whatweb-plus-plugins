Plugin.define do
name "PnPSCADA"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Plug 'n' Play SCADA (PnPSCADA) - Hosted service or run on site"
website "http://www.pnpscada.com/productoffering.html"
dorks [
'intitle:"PnPSCADA Login" "Note: This site uses Cookies, JavaScript and Popups"'
]
matches [
{:text=>'<TITLE>Login - PnPSCADA</TITLE>'},
{:text=>'<TITLE>Welcome to Plug and Play Scada</TITLE>'},
{:version=>/<CENTER><SPAN style='font-family:arial;font-size:10px'>PNPSCADA ([^\s]+) &copy;20[\d]{2} SDG Technologies cc\. All rights strictly reserved\. Please review our <A target='_blank' style='font-family:arial;font-size:10px' href='termsandconditions\.html'>Terms and Conditions<\/A>\. <\/SPAN><\/CENTER>/},
]
end
