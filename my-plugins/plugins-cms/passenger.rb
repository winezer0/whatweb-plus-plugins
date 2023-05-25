Plugin.define do
name "passenger"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description 'Phusion Passenger - a.k.a. mod_rails or mod_rack - makes deployment of Ruby web applications, such as those built on the revolutionary Ruby on Rails web framework, a breeze. It follows the usual Ruby on Rails conventions, such as "Dont-Repeat-Yourself""
website "http://www.modrails.com/'
matches [
{:regexp=>/.*Phusion_Passenger/, :search=>"headers[server]"},
{:version=>/Phusion Passenger \(mod_rails\/mod_rack\) ([\d\.]+)/, :search=>"headers[x-powered-by]"},
{:version=>/[\s]+Phusion_Passenger\/([\d\.]+)/, :search=>"headers[server]"},
]
end
