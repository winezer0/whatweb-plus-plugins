Plugin.define do
name "globalsign-cert"
authors [
"winezero",

]
version "0.1"
matches [
{:text=>'//seal.globalsign.com/SiteSeal'},
]
end