Plugin.define do
name "apphp-calendar"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The ApPHP Calendar (ApPHP CAL) is a powerful PHP calendar script that may be easily integrated and used with various PHP projects, such as schedulers, event processors etc. The calendar is very simple to install, implement and use."
website "http://www.apphp.com/php-calendar/"
dorks [
'Sunday Monday Tuesday Wednesday Thursday Friday "Satarday" inurl:action inurl:view_type'
]
matches [
{:text=>"<tr class='tr_days'><td class='th'>Sunday</td><td class='th'>Monday</td><td class='th'>Tuesday</td><td class='th'>Wednesday</td><td class='th'>Thursday</td><td class='th'>Friday</td><td class='th'>Satarday</td></tr>"},
{:text=>'This script was generated by ApPHP Calendar'},
{:version=>/<!-- This script was generated by ApPHP Calendar v\.([\d\.]+) \(http:\/\/www\.apphp\.com\) -->/},
]
aggressive do
m=[]
if @body =~ /<!-- This script was generated by ApPHP Calendar v\.([\d\.]+) \(http:\/\/www\.apphp\.com\) -->/ and @base_uri.path =~ /\.php/
target_url = @base_uri.to_s.scan(/^([^\n]*\.php)/).to_s+"?view_type[]"
status,url,ip,body,headers=open_target(target_url)
m << { :filepath=>body.scan(/: The first argument should be either a string or an integer in (<b>)?([^\n^<]+)(<\/b>)? on line (<b>)?[\d]+(<\/b>)?/)[0][1] } if body =~ /: The first argument should be either a string or an integer in (<b>)?([^\n^<]+)(<\/b>)? on line (<b>)?[\d]+(<\/b>)?/
end
m
end
end