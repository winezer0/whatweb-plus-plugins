Plugin.define do
name "infosafe-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'infosafe'},
{:text=>'var infosafekey='},
]
end