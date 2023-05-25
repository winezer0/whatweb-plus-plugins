Plugin.define do
name "kibo-commerce"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/cdn-tp\d+\.mozu\.com/, :search=>'body'},
]
end