Plugin.define do
name "jetnexus-load-balancer"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "jetNEXUS provide leading edge load balancing and traffic management solutions to accelerate application performance and availability, enabling clients to create and deliver resilient and scalable online services."
website "http://www.jetnexus.com/"
passive do
m=[]
m << { :name=>"jetNEXUS Header" } if @headers["jetnexus"] =~ /^Streaming Compression/
m
end
matches [
{:name=>"visid_incap_ cookie", :search=>"headers[set-cookie]", :regexp=>/^visid_incap_/},
{:name=>'Set-cookie Header', :search=>"headers[set-cookie]", :regexp=>/incap_ses_/i},
{:name=>'Set-cookie Header', :search=>"headers[set-cookie]", :regexp=>/incap_visid_83_/i},
{:search=>'headers', :text=>'X-Iinfo'},
{:search=>'headers', :text=>'incap_ses_'},
{:search=>'headers', :text=>'incap_visid_83_'},
{:search=>'headers', :text=>'visid_incap'},
{:text=>'Incapsula incident ID'},
]
end