Plugin.define do
name "cisco-ace-xml-gateway-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'ACE XML Gateway'},
]
end