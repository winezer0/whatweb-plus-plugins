Plugin.define do
name "blogsmithmedia"
authors [
"Andrew Horton",

]
version "0.2"
description "Pro bloggers - www.blogsmithmedia.com"
matches [
{:certainty=>75, :regexp=>/<script [^>]*\"http:\/\/www.blogsmithmedia.com/},
]
end
