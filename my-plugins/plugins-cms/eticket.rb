Plugin.define do
name "eTicket"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "eTicket is a PHP-based electronic support ticket system that can receive tickets via email (pop3/pipe) or a web form."
website "http://www.eticketsupport.com/"
dorks [
'"Powered by eTicket" "Support Ticket System"'
]
matches [
{:regexp=>/<td><a href="(http:\/\/)?www\.eticketsupport\.com" target="_blank">Powered by eTicket<\/a><\/td>/},
{:text=>'/eticket/eticket.css'},
{:text=>'<a href="http://www.eticketsupport.com" target="_blank">'},
{:text=>'<div class="pre-footer">Support Ticket System</div>'},
{:text=>'<link rel="stylesheet" href="themes/eticket/style.css" type="text/css">'},
{:text=>'<p><strong>Note:</strong> &quot;/path/to/automail.pl&quot; should be the <a href="http://en.wikipedia.org/wiki/Full_path">full path</a>'},
{:text=>'Powered by eTicket'},
]
end
