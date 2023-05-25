Plugin.define do
name "ibm-datapower-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'X-Backside-Transport'},
]
end