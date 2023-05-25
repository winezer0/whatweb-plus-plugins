Plugin.define do
name "sap-customer-data-cloud-sign-in"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/\.gigya\.com.JS.gigya\.js/, :search=>'body'},
]
end