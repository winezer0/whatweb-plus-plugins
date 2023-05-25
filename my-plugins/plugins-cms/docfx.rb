Plugin.define do
name "docfx"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/docfx\s([\d\.]+)/},
{:regexp=>/toc.html/, :search=>'body'},
]
end