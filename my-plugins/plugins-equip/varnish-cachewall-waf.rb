Plugin.define do
name "varnish-cachewall-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'Varnish'},
{:text=>'access is blocked according to our site security policy'},
{:text=>'security by cachewall'},
]
end