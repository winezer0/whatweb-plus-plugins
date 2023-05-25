Plugin.define do
name "mno-go-search"
authors [
"Andrew Horton",
]
version "0.3"
description "mnoGoSearch is an opensource website search engine. Homepage http://www.mnogosearch.org"
dorks [
'"Powered by mnoGoSearch"'
]
matches [
{:certainty=>75, :regexp=>/<title>mnoGoSearch:/},
{:regexp=>/Powered by mnoGoSearch .{3} free web search engine software/},
]
end