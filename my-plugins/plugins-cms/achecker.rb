Plugin.define do
name "AChecker" 
authors ["Brendan Coles <bcoles@gmail.com>"]
version "0.1"
description "AChecker  is an open source Web accessibility evaluation tool. It can be used to review the accessibility of Web pages based on a variety international accessibility guidelines."
website "http://www.atutor.ca/achecker/"
dorks [
'intitle:"AChecker : ATRC Accessibility Checker:"'
]
matches [
{:text=>'<title>AChecker : ATRC Accessibility Checker: </title>'},
]
end