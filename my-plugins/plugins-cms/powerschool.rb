Plugin.define do
name "PowerSchool"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PowerSchool is the fastest-growing, most widely used web-based student information system, supporting more than 8.5 million students in 50 states and over 50 countries."
website "http://www.pearsonschoolsystems.com/products/powerschool/"
matches [
{:search=>"headers[server]", :regexp=>/^PowerSchool$/},
]
end
