Plugin.define do
name "estore-compare"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/cdn\d+\.estore\.jp./, :search=>'body'},
]
end