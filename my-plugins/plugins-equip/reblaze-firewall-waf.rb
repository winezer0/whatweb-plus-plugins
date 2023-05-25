Plugin.define do
name "reblaze-firewall-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'rbzid='},
]
end