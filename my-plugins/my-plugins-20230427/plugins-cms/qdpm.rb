Plugin.define do
name "qdPM"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "qdPM is a free web-based project management tool suitable for a small team working on multiple projects."
website "http://qdpm.net/"
dorks [
'"qdPM" "is redistributable under the GNU General Public License" "Login" "Email" "Password"'
]
matches [
{:search=>"headers[set-cookie]", :regexp=>/qdpm(_extended)?=[^;]+;/},
{:string=>/Copyright @ (20[\d]{2}) <a class="footer-text" target="_blank"( title="open source project management software")? href="http:\/\/(www\.qds-team\.com|qdpm\.net\/)">/},
{:version=>/qdPM ([^\s]+) &nbsp;is redistributable under the\s+<a class="footer-text"/},
]
end
