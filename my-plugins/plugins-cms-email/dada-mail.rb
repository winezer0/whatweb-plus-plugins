Plugin.define do
name "Dada-Mail"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Dada Mail is a Contemporary Mailing List Manager. Dada Mail works brilliantly - especially when you want to run a verified, closed loop opt-in subscription-based mailing list that your subscribers can trust."
website "http://dadamailproject.com/"
dorks [
'"Powered by Dada Mail" ext:cgi inurl:mail.cgi'
]
matches [
{:ghdb=>'"Powered by Dada Mail" filetype:cgi inurl:mail.cgi'},
{:regexp=>/<!-- Dada Mail is Copyright 1999 - 20[\d]{2} Justin Simoni -->/},
{:version=>/Powered by <a href="http:\/\/(mojo.skazat.com|dadamailproject.com)" target="_blank" style="font-size:10px;font-family:Verdana,Arial">Dada Mail ([^\s^<]+)/, :offset=>1 },
]
end
