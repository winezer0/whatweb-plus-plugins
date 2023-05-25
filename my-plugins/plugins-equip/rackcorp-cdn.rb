Plugin.define do
name "rackcorp-cdn"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "RackCorp Content Delivery Network - RackCorp is the preferred hosting provider for critical websites around the world. They specialise in high-uptime, high-reliability, and fast hosting services. Their systems serve some very large content delivery networks (CDN's), allowing them to serve Over a Petabyte of data every month globally from a variety of locations including Australia, US, UK, Germany, and Canada."
website "http://www.rackcorp.com/"
matches [
{:regexp=>/^[\s]*rackcorpcdn/, :search=>"headers[server]"},
{:version=>/^[\s]*rackcorpcdn\/([\d\.]{3,6})/, :search=>"headers[server]", :string=>"Apache or Nginx", :os=>"Linux"},
]
end
