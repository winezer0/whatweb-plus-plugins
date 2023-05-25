Plugin.define do
name "pure-chat"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'body', :regexp=>/app\.purechat\.com/},
]
end