Plugin.define do
name "ruby-receptionists"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/chatwidget\.ruby\.com/, :search=>'body'},
]
end