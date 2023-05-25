Plugin.define do
name "malcare-security-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:text=>'Blocked because of Malicious Activities'},
{:text=>'powered by MalCare'},
]
end