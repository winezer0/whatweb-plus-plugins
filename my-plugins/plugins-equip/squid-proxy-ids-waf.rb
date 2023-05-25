Plugin.define do
name "squid-proxy-ids-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'eventsquid-id'},
{:text=>'X Squid Error'},
]
end