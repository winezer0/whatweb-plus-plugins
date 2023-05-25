Plugin.define do
name "motoritor"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Motorito"
website "http://www.motorito.com/"
dorks [
'inurl:mmod=staticContent'
]
matches [
{:text=>'<!-- CAL POSAR UN DISCRIMINADOR DE NAVEGADORS PER CARREGAR ELS ESTILS ADEQUATS -->'},
{:text=>'<!-- end META_TAGS subst -->'},
]
end
