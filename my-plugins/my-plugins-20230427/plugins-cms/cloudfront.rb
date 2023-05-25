Plugin.define do
name "CloudFront"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CloudFront Server"
matches [
{:search=>"all", :text=>'Cloudfront'},
{:search=>"headers[server]", :regexp=>/^CloudFront/},
{:search=>"headers[x-cache]", :regexp=>/^Error from cloudfront/},
{:status=>403, :text=>"<html><body>Sorry, invalid request</body></html>"},
]
end
