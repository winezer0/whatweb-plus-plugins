Plugin.define do
name "sucuri-firewall-sucuri-cloudproxy-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'Sucuri/Cloudproxy'},
{:search=>'headers', :text=>'X-Sucuri-Block'},
{:text=>'Access Denied - Sucuri Website Firewall'},
{:text=>'Sucuri WebSite Firewall - CloudProxy - Access Denied'},
{:text=>'cloudproxy@sucuri.net'},
]
end