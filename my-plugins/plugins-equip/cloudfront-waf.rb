Plugin.define do
name "cloudfront-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'Error from cloudfront'},
{:search=>'headers', :text=>'nguardx'},
]
end