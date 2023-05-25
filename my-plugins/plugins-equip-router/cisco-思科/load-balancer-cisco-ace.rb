Plugin.define do
name "load-balancer-cisco-ace"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Cisco ACE'},
]
end