Plugin.define do
name "CruxPA"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CruxPA - Simple, easy to use task list/CRM"
website "http://www.cruxsoftware.co.uk/"
dorks [
'"Powered By CruxPA"'
]
matches [
{:text=>'<div id="copy"><center>Powered By <a href="http://www.cruxsoftware.co.uk">CruxPA</a><br>'},
]
end
