Plugin.define do
name "greywizard-firewall-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'greywizard'},
{:text=>'<title>Grey Wizard'},
{:text=>'<title>UPUPW WARNING</title>'},
]
end