Plugin.define do
name "amex-checkout"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'body', :regexp=>/aexp-static\.com/},
]
end