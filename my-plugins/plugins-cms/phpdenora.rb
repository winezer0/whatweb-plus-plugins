Plugin.define do
name "phpDenora"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpDenora is the Web Frontend to the Denora Stats Server and provides a complete, nice looking and solid Interface featuring detailed network, channel and user statistics, graphical outputs, multilanguage and template systems, all by following modern web standards. Requires PHP 4.3.1+ and PHP MySQL module"
website "http://denorastats.org/"
dorks [
'"powered by phpDenora" intitle:"phpDenora"'
]
matches [
{:certainty=>25, :ghdb=>'"powered by phpDenora" intitle:"phpDenora"'},
{:string=>/<meta name="Description" content="IRC Statistics for (.+) powered by phpDenora" \/>/},
{:version=>/<td><h6 class="right">Powered by <a href="http:\/\/(phpdenora.pimpmylinux.org|denorastats.org)\/">phpDenora<\/a> v([^<]+)<\/h6><\/td>/, :offset=>1 },
]
end
