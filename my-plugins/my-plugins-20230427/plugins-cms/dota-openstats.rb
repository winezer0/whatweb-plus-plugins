Plugin.define do
name "DotA-OpenStats"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DotA OpenStats - MySQL based web statistics site for DotA games. - Requires PHP and MySQL"
website "https://sourceforge.net/projects/dotaopenstats/"
dorks [
'intitle:"DotA OpenStats" "2011 Powered by DotA OpenStats" -dork'
]
matches [
{:string=>/&copy; (20[\d]{2}) Powered by <a target="_blank" href="http:\/\/openstats\.iz\.rs">DotA OpenStats<\/a>/},
{:text=>"<img alt='' width='16' height='16' style='vertical-align:middle' src='./style/dota/img/logo.png' />"},
{:text=>'<meta name="copyright" content="openstats.iz.rs" />'},
{:text=>'<meta name="generator" content="dota OpenStats" />'},
{:text=>'content="dota OpenStats'},
{:text=>'content="openstats.iz.rs'},
]
end
