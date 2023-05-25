Plugin.define do
name "yunsuo-web-application-firewall-yunsuo-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'yunsuo'},
{:search=>'headers', :text=>'yunsuo_session'},
{:text=>'yunsuologo'},
]
end