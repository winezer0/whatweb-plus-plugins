Plugin.define do
name "feedback-fish"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'body', :regexp=>/^https:..feedback\.fish.ff\.js/},
]
end