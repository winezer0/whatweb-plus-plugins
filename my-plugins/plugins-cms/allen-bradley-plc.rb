Plugin.define do
name "Allen-Bradley-PLC"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "SCADA - Allen Bradley programmable logic controller (PLC)"
website "http://ab.rockwellautomation.com/Programmable-Controllers"
matches [
{:model=>/<h1><font face="helvetica" size=6>([\d]{4}-[A-Z][\d]{3}|[\d]{4}-[A-Z][\d]{3}\/[A-Z]) Ethernet Processor<\/font><\/h1><br><\/td>/},
{:model=>/<html><head><title>([\d]{4}-[A-Z][\d]{2}[A-Z]{4} [A-Z]\/[\d\.]{4})  <\/title><META HTTP-EQUIV="Pragma" CONTENT="no-cache"><META HTTP-EQUIV="Expires" CONTENT="-1">/},
{:model=>/<html><head><title>([\d]{4}-[A-Z][\d]{3}|[\d]{4}-[A-Z][\d]{3}\/[A-Z]) Home Page<\/title><\/head>/},
{:url=>"/images/rockcolor.gif", :md5=>"4e77d7a8ac45b5c7afe7ade730f172e7", :model=>"1747 Series"},
{:url=>"/ralogo.gif", :md5=>"640eeef53f64fac202eb0673ed269be1", :model=>"1766 Series"},
{:version=>/^A-B WWW\/([\d\.]{3})/, :search=>"headers[server]"},
]
end
