Plugin.define do
name "ab-tasty"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/try\.abtasty\.com/, :search=>'body'},
]
end