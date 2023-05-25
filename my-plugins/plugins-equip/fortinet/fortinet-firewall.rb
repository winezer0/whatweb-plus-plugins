Plugin.define do
name "fortinet-firewall" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Fortinet-Firewall'},
{:text=>'Firewall Notification'},
]
end