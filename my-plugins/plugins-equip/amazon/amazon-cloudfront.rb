Plugin.define do
name "amazon-cloudfront" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Amazon Cloudfront'},
{:search=>"headers", :text=>'X-Amz-Cf-Id'},
{:search=>'headers[via]', :regexp=>/\(CloudFront\)$/},
]
end