Plugin.define do
name "kibo-personalization"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/\.baynote\.net/, :search=>'body'},
{:search=>'body', :regexp=>/\.monetate\.net/},
]
end