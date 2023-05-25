Plugin.define do
name "VoIP-Router-Gateway"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ALLWIN Tech VoIP Router Gateway device [ Chinese ] - Runs EIA AOS software"
matches [
{:text=>'<area shape="poly" coords="152,237,152,180,194,180,260,215,293,214,293,236" href="enFrame.htm" alt="english version" onClick="form_submit(\'english\')">'},
]
passive do
m=[]
if @headers["server"] =~ /^GoAhead-Webs/
m << { :status=>401, :name=>"HTTP Server Header and WWW-Authenticate Realm" } if @headers["www-authenticate"] =~ /Basic realm="Web Config System"/
end
m
end
end
