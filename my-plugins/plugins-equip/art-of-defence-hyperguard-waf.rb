Plugin.define do
name "art-of-defence-hyperguard-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'WODSESSION='},
]
end