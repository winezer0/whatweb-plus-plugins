Plugin.define do
name "wts-web-application-firewall-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'wts/'},
{:text=>'title>wts-waf'},
]
end