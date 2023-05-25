Plugin.define do
name "varnish-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'X-Varnish'},
{:search=>'headers', :text=>'varnish'},
]
end