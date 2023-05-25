Plugin.define do
name "visa-checkout"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/secure\.checkout\.visa\.com/, :search=>'body'},
]
end