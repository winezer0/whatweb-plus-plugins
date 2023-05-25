Plugin.define do
name "vwo-engage"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/cdn\.pushcrew\.\w+/, :search=>'body'},
]
end