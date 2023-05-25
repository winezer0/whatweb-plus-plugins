Plugin.define do
name "atlassian-statuspage"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<a[^>]*href="https?:..(?:www\.)?statuspage\.io.powered-by[^>]+>/},
]
end