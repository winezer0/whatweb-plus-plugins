Plugin.define do
name "imperva-securesphere-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'X-Iinfo'},
{:text=>'Contact support for additional information.<br/>The incident ID is'},
]
end