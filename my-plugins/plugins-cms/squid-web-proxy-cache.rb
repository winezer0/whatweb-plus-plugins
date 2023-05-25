Plugin.define do
name "Squid-Web-Proxy-Cache"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.2"
description "Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages."
website "http://www.squid-cache.org/"
passive do
m=[]
m << { :name=>"x-squid-error", :certainty=>25 } unless @headers["x-squid-error"].nil?
m << { :version=>@headers["server"].to_s.scan(/[\s]*Squid\/([^\r^\n]+)/i).flatten } if @headers["server"] =~ /[\s]*Squid\/([^\r^\n]+)/i
m
end
matches [
{:certainty=>75, :text=>"This site is completely powered by the Squarespace platform."},
{:regexp=>/<!-- This is Squarespace\. -->/},
{:search=>"all", :text=>'Squarespace'},
{:search=>"headers[set-cookie]", :regexp=>/^SS_MID/, :name=>"SS_MID cookie"},
{:search=>"headers[set-cookie]", :regexp=>/^WebPersCookie/, :name=>"WebPersCookie cookie"},
{:search=>"headers[set-cookie]", :regexp=>/^ss_sd/, :name=>"ss_sd cookie"},
{:search=>'headers[x-servedby]', :regexp=>/squarespace/},
{:text=>'new Squarespace.FixedPositionTip("Logout Successful", "You have been successfully logged out.", { xMargin: 15, yMargin: 15, icon: "/universal/images/helptip-info.png", orientation: "upper-right", viewportFixed: true, autoHide: 1800 }).show();'},
{:url=>"/favicon.ico", :md5=>"89cc5689b952ee12d13a68e98119183f"},
{:url=>"favicon.ico", :md5=>"89cc5689b952ee12d13a68e98119183f"},
]
end