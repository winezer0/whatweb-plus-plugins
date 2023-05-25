Plugin.define do
name "Cachelogic-Expired-Domains-Script"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Expired Domains Script runs daily and updates the database with the latest expiring domains. Requires: Unix Host, PHP5, MYSQL5, CURL Enabled, Cron, Support for the zip extension in PHP."
website "http://cachelogic.net/"
dorks [
'"Developed by Cachelogic.net" "Domain contains(keyword):" "All TLDs" -inurl:"cachelogic.net"',
'allinurl:page domain ext filter hyphen numbers ncharacter'
]
matches [
{:string=>"Free", :text=>"<!-- Please do not remove. It is illegal to remove this footer in Cachelogic Expired Domains Free Edition-->"},
{:text=>'<br><br><br>Website is powered by <a href="http://cachelogic.net">Cachelogic.net</a>'},
{:text=>'<option value="15">15</option><option value="12">12</option><option value="10">10</option><option value="8">8</option><option value="7">7</option><option value="6">6</option><option value="5">5</option><option value="4">4</option><option value="3">3</option><option value="2">2</option>'},
{:text=>'<option value="30">Last 30 days</option><option value="21">Last 21 days</option><option value="14">Last 14 days</option><option value="7">Last 7 days</option><option value="6">Last 6 days</option><option value="5">Last 5 days</option><option value="4">Last 4 days</option><option value="3">Last 3 days</option><option value="2">Last 2 days</option><option value="1">Last 1 days</option>'},
{:text=>'href="http://cachelogic.net">Cachelogic.net'},
{:text=>'href="http://cachelogic.net">Cachelogic.net</a></td></tr>'},
]
end
