Plugin.define do
name "WebspotBlogging"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Old blog"
website "http://www.webspot.co.uk/"
passive do
m=[]
if @body =~ /Powered By <a href='http:\/\/www.webspot.co.uk\/' target='_blank'>WebspotBlogging<\/a> v[\d\.]+<BR>/
version=@body.scan(/Powered By <a href='http:\/\/www.webspot.co.uk\/' target='_blank'>WebspotBlogging<\/a> v([\d\.]+)<BR>/)[0][0]
m << {:version=>version}
end
m
end
matches [
{:certainty=>75, :search=>"headers[set-cookie]", :regexp=>/ws_session=[a-z\d]+;/},
{:text=>'<meta name="generator" content="webSPELL" />'},
{:version=>/Diese Seite benutzt das <a href="http:\/\/www.webspell.org" target="[^"]+">webSPELL Script \(Version: ([^\)]+)\)[\s]*<\/a>/},
{:version=>/This site is using the <a href="http:\/\/www.webspell.org" target="[^"]+">webSPELL (Free Content Management System|script) \(version: ([^\)]+)\)[\s]*<\/a>/, :offset=>1},
]
end