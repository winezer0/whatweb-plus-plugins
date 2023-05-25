Plugin.define do
name "blue-coat-proxysg"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Blue Coat ProxySG - provides complete control over all web traffic - includes user authentication, web filtering, data loss prevention, inspection and validation of SSL-encrypted traffic, content caching, bandwidth management, stream-splitting and more."
website "http://www.bluecoat.com/products/proxysg"
matches [
{:search=>"headers", :text=>'proxysg'},
{:search=>"headers[location]", :regexp=>/https?:\/\/proxysg\/\?cfru=[^\s]+$/},
]
end
