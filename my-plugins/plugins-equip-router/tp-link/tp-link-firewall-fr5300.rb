Plugin.define do
name "tp-link-firewall-fr5300"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'TP-LINK Firewall FR5300'},
]
end