Plugin.define do
name "affiliate-future"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/t\.afi-b\.com/, :search=>'body'},
{:search=>'body', :regexp=>/tags\.affiliatefuture\.com/},
]
end