Plugin.define do
name "fast-esp"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<form[^>]+id="fastsearch/},
]
end