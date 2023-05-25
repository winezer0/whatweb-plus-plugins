Plugin.define do
name "lotus-notes-traveler"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IBM Lotus Notes Traveler is a push email solution providing quick access to email, calendar, address book, journal, and to-do list for Lotus Notes mobile users."
website "https://www-01.ibm.com/software/lotus/products/notes/traveler.html"
matches [
{:search=>"headers[www-authenticate]", :string=>/^Basic realm="Lotus Notes Traveler \(([^\)]+)\)"$/},
{:status=>401, :text=>'<HTML><HEAD><TITLE>Unable to Process Request</TITLE></HEAD><BODY><P>Servlet Status Code: 401</P><P>Servlet Status Message: Unauthorized</P></BODY></HTML>'},
]
end
