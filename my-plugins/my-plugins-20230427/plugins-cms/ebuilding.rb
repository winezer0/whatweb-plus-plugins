Plugin.define do
name "ebuilding"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Teletrol Systems Inc. - eBuilding Network Controller - web interface - facility automation system - More info: http://www.trademarkia.com/ebuilding-webbased-facility-automation-systems-75885297.html"
matches [
{:certainty=>75, :text=>'<title>eBuilding Web</title>'},
{:text=>'<HTML><HEAD><TITLE>eBuilding Network Controller</TITLE><LINK title=global_style '},
{:url=>"/", :md5=>"fcfda4be8f50b3312b38966f2864188f"},
]
end
