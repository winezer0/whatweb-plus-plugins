Plugin.define do
name "XBMC"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "XBMC (formerly 'Xbox Media Center') is a free, open source (GPL) multimedia player that runs on the first-generation Microsoft Xbox, (not the newer Xbox 360), as well as on computers running Linux, Mac OS X, and Windows."
matches [
{:text=>'		<!-- <link rel="search" href="/provider.xml" type="application/opensearchdescription+xml" title="XBMC Library" /> -->', :string=>"Insecure"},
{:url=>"/favicon.ico", :md5=>"46b742e6ba5d7ac03f13b312601c113f", :certainty=>75},
]
passive do
m=[]
m << { :name=>'HTTP WWW Authenticate header' } if @headers['www-authenticate'] =~ /realm=["]?XBMC/ or @headers['www-authenticate'] =~ /realm=["]?Keimo-XBMC/
m
end
end
