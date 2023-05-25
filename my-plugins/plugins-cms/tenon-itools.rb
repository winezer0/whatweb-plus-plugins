Plugin.define do
name "Tenon-iTools"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "iTools 9 is a web site management system for both small to medium-sized web hosting providers that own or rent dedicated servers, and for large service providers who may wish to bundle iTools into their offerings. iTools is ideal for the professional hosting of multiple companies on a single server; it shortens the time and lessens the expertise needed to deploy new sites. iTools's secure, domain-specific, browser-based Apache administration, using a 9th generation suite of tools, makes Apache on Mac OS X, the easiest Apache in the world to administer."
website "http://www.tenon.com/products/itools-osx/"
matches [
{:regexp=>/\(iTools/, :search=>"headers[server]"},
{:version=>/\(iTools ([\d\.]+)[\)]?\/Mac OS X\)/, :string=>"Mac OS X", :search=>"headers[server]"},
]
end
