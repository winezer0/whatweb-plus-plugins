Plugin.define do
name "ccv-shop"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'body', :regexp=>/.website.JavaScript.Vertoshop\.js/},
]
end