Plugin.define do
name "jtl-shop"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/(?:<input[^>]+name="JTLSHOP|<a href="jtl\.php)/},
]
end