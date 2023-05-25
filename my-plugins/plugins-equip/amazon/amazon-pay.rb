Plugin.define do
name "amazon-pay"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/\.payments-amazon\.com.OffAmazonPayments/, :search=>'body'},
{:search=>'body', :regexp=>/.amazonpayments(?:\.min)?\.js/},
]
end