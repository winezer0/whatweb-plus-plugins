Plugin.define do
name "Ecomat-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Ecomat CMS"
website "http://www.ecomat.ch/"
matches [
{:text=>'content="ECOMAT CMS'},
{:version=>/<meta name="Generator" content="ECOMAT CMS ([\d\.]{1,5})">/},
]
end
