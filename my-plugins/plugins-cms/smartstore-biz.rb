Plugin.define do
name "smartstore-biz"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/smjslib\.js/, :search=>'body'},
]
end