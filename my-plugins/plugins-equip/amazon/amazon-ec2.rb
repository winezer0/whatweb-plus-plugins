Plugin.define do
name "amazon-ec2"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Amazon EC2'},
{:search=>'headers[server]', :regexp=>/\(Amazon\)/},
]
end