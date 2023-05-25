Plugin.define do
name "zip-pay-zip-money"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<img [^>]*src="[^.]*..[^.]*eway\.com/},
{:regexp=>/static\.zipmoney\.com\.au/, :search=>'body'},
{:search=>'body', :regexp=>/zip\.co/},
]
end