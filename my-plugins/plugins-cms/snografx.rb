Plugin.define do
name "SnoGrafx"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Image gallery software"
website "http://snografx.com/"
matches [
{:regexp=>/<!-- Website designed[\ and powered]* by [^\|]+\|\| Visit: http:\/\/snografx.com\/ -->/},
{:text=>"Website powered by: <a href='http://snografx.com/' target='_blank'>Snöfx</a>"},
{:text=>'var snoOff = new Image();snoOff.src = "4fx/00sno.png";var snoOn = new Image();snoOn.src = "4fx/02sno.png";'},
{:text=>'var snoOff = new Image();snoOff.src = "xfx/snografx0.gif";var snoOn = new Image();snoOn.src = "xfx/snografx2.gif";'},
]
end
