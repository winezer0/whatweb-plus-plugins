Plugin.define do
name "mod-security-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'mod_security'},
]
end