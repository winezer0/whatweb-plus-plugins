Plugin.define do
name "fortiweb-firewall-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'cookiesession1'},
]
end