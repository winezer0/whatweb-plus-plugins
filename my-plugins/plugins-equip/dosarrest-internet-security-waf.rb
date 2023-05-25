Plugin.define do
name "dosarrest-internet-security-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'DOSarrest'},
{:search=>'headers', :text=>'X-DIS-Request-ID'},
]
end