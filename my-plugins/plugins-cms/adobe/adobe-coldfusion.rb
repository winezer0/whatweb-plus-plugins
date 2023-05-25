Plugin.define do
name "adobe-coldfusion"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<!-- START headerTags\.cfm/},
{:search=>'body', :regexp=>/.cfajax./},
{:search=>'headers[set-cookie]', :regexp=>/CFTOKEN=/},
{:text=>'ColdFusion.Ajax'},
]
end