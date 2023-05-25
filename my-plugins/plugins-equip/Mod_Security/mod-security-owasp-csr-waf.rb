Plugin.define do
name "mod-security-owasp-csr-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:status=>'406', :text=>'406 not acceptable'},
]
end