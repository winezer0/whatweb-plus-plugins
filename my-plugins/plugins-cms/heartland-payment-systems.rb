Plugin.define do
name "heartland-payment-systems"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'body', :regexp=>/\.heartlandportico\.com/},
]
end