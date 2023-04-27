Plugin.define do
name "athena-search"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/wp-content.plugins.athena-search/, :search=>'body'},
]
end