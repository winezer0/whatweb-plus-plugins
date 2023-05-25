Plugin.define do
name "smartstore-page-builder"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<section[^>]+class="g-stage/},
]
end