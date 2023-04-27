Plugin.define do
name "the-hut-group"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/THEHUT-.*\.js/, :search=>'body'},
]
end