Plugin.define do
name "dynamic-yield"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/cdn\.dynamicyield\.\w+./, :search=>'body'},
]
end