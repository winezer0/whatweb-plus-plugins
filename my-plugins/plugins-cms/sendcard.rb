Plugin.define do
name "Sendcard"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sendcard is a multi-database (It currently supports 9 different databases!) ecards script or virtual postcard program written in PHP. Suitable for large or small sites, it is very easy to setup, and comes with an installation wizard."
website "http://www.sendcard.org/"
dorks [
'"scscsc320"',
'"Powered by sendcard - an advanced PHP e-card program" -dork'
]
matches [
{:certainty=>25, :regexp=>/<img src="poweredbysendcard102x47.gif"[^>]+alt="Powered by sendcard - an advanced PHP e-card program">/},
{:regexp=>/<a href="http:\/\/(sendcard.sf.net|www.sendcard.org)\/"( title="download your own PHP e-card script")?><img src="poweredbysendcard102x47.gif"[^>]+alt="Powered by sendcard - an advanced PHP e-card program"[^>]*><\/a>/},
{:text=>"<!-- The following line should allow me to search on google and find sendcard installations -->"},
{:text=>'<div style="display: none; color: White;">scscsc320</div>'},
]
end
