Plugin.define do
name "accelerated-mobile-pages"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<html[^>]* (?:amp|⚡)/},
]
end