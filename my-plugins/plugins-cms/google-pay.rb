Plugin.define do
name "google-pay"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<[^>]+aria-labelledby="pi-google_pay/},
{:search=>'body', :regexp=>/pay\.google\.com.([a-z.]+).pay\.js/},
]
end