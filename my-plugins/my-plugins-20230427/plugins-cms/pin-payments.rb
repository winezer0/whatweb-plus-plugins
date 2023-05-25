Plugin.define do
name "pin-payments"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'body', :regexp=>/api\.pinpayments\.com/},
]
end