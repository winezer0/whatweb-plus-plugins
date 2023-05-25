Plugin.define do
name "carrier-ccnweb"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description 'Carrier CCNWeb - a web-based HVAC front-end for a Carrier CCN Controls system. Comes out of the box with the ability to "Self-Learn" the building controls and then automatically display them."
website "'
dorks [
'intitle:"CCNWeb Login" inurl:"login.ssi"'
]
matches [
{:text=>'/images/CCNWeb.gif'},
{:text=>'<APPLET CODE="JLogin.class" ARCHIVE="JLogin.jar" MAYSCRIPT WIDTH=310 HEIGHT=185>'},
{:text=>'<APPLET CODE="JLogin.class" ARCHIVE="JLogin.jar'},
{:url=>"/images/CCNWeb.gif", :md5=>"724cba3a2d5b36c754d55ae0e450429a"},
]
end
