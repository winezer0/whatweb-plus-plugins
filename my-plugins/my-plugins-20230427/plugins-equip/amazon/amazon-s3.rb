Plugin.define do
name "amazon-s3"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Amazon S3'},
{:search=>'headers[server]', :regexp=>/^AmazonS3$/},
]
end