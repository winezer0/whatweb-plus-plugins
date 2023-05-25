Plugin.define do
name "InverseFlow-Help-Desk-System"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "InverseFlow Help Desk System"
website "http://www.inverseflow.com/products/helpdesk/index.php"
dorks [
'for inurl:"ticket.php?cmd=lost"',
'inurl:"ticketview.php" "To view a ticket, please enter your email address and ticket ID."'
]
matches [
{:certainty=>25, :regexp=>/<div class="normal">[^<]+<a href="ticket\.php\?cmd=lost">/},
{:certainty=>25, :text=>'<form action="ticketview.php" method="get">'},
{:certainty=>25, :text=>'<table width="100%" bgcolor="#FFAD4D" border="0"><tr><td><div class="infobar_01">'},
{:regexp=>/<form action="ticket\.php" method="get">[\s]+<input type="hidden" name="cmd" value="lost" \/>/},
{:text=>'<div class="normal">To view a ticket, please enter your email address and ticket ID.  If you forgot your ticket ID, you can use the <a href="ticket.php?cmd=lost">ticket lookup</a>.</div>'},
{:version=>/<table width="100%" bgcolor="#FFAD4D" border="0"><tr><td><div class="infobar_01">InverseFlow Help Desk ([^<]+)<\/td><\/tr><\/table>/},
]
end
