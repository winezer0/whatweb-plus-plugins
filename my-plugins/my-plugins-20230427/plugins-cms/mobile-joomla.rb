Plugin.define do
name "Mobile-Joomla"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mobile Joomla"
website "http://www.mobilejoomla.com/"
matches [
{:search=>"headers[set-cookie]", :regexp=>/mjmarkup=deleted;/},
]
end
