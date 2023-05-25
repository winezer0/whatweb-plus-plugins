Plugin.define do
name "lazo"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/blazor\.webassembly\.js/, :search=>'body'},
{:search=>'body', :regexp=>/blazor\.host\.min\.js/},
{:search=>'body', :regexp=>/blazor\.server\.js/},
]
end