Plugin.define do
name "phpstudy"
authors ["winezer0"]
description "phpstudy."
website "http://www.phpstudy.net/"
matches [
{:regexp=>/<div id="lnmplink">for <a href="http:\/\/www.phpstudy.net\/"/},
{:text=>'<div id="lnmplink">for <a href="http://www.phpstudy.net/"'},
{:version=>/<div id="lnmplink">for <a href="http:\/\/www.phpstudy.net\/" target="_blank">(.*?)<\/a><\/div>/},
]
end