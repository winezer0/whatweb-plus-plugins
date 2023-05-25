Plugin.define do
name "strato-newsletter-manager"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "STRATO Newsletter Manager - Requires PHP"
website "http://www.strato-cgi.de/"
dorks [
'inurl:"newsletter.php.cgi"'
]
matches [
{:certainty=>75, :text=>'<title>STRATO Newsletter Manager</title>'},
{:text=>'<td><img src="http://strato.de/cgi2004/cgi2.0/images/transparent120x94.gif" alt="CGI 2004" /></td>'},
]
end
