Plugin.define do
name "akamai-mpulse"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<script>[\s\S]*?go-mpulse\.net\.boomerang[\s\S]*?<.script>/},
]
end