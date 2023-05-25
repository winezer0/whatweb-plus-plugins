Plugin.define do
name "kontaktformular"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP contact form"
website "http://www.radbekleidung.eu/gratis-kontaktformular.html"
dorks [
'"Script Powered by Kontaktformular"'
]
matches [
{:text=>'&copy; Script Powered by kontaktformular.org </span>'},
{:text=>'<!-- Hinweis darf nicht entfernt werden! -->'},
{:text=>'<!--Copyright darf NICHT entfernt werden!!-->'},
{:text=>'Script Powered by <a target="_blank" href="http://www.radbekleidung.eu/gratis-kontaktformular.html">Kontaktformular</a>'},
]
end
