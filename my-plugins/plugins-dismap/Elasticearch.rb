Plugin.define do
name "Elasticearch" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/<title>elasticsearch.*<\/title>/},
{:search=>"header",:regexp=>/server: ecstatic.*/},
]
end