Plugin.define do
name "safe3-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'Safe3 Web Firewall'},
{:search=>'headers', :text=>'Safe3WAF'},
]
end