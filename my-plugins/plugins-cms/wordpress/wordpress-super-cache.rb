Plugin.define do
name "wordpress-super-cache"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!--[^>]+WP-Super-Cache/},
]
end