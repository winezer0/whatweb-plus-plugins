Plugin.define do
name "Shaadi-Zone"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Shaadi Zone is the best solution if you are looking to run a matrimonial services services. We have integrated many features which you can use and take full advantage of the matrimonial services. You can run a site like shaadi or bharatmatrimoniy easily."
website "http://www.vastal.com/shaadi-zone-matrimonial-services-script.html"
dorks [
'"Powered By Shaadi Zone"'
]
matches [
{:text=>"<a href='http://www.vastal.com/' target='_blank'>Powered By Shaadi Zone</a>."},
{:text=>"Powered By <a href='http://www.vastal.com/' target=\"_blank\">Shaadi Zone</a>"},
]
end
