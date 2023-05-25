Plugin.define do
name "SmartThumbs"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SmartThumbs is a complete tgp script (thumbnail gallery post management script), it makes your work easier and faster by automating gallery preview and thumbnail cropping. Productivity based thumbnail rotation makes your productivity higher and brings fast traffic growth."
website "http://www.smart-scripts.com/?action=smartthumbs"
matches [
{:regexp=>/POWERED[\s]+BY[\s]+<a href="http:\/\/www.smart-scripts.com">SMART THUMBS<\/a>/},
{:text=>'POWERED BY<span> <a href="http://www.thumbsrotator.com"><b><span style="font-size: 11px; font-family: Verdana, Arial;">SMART THUMBS</span>'},
]
end
