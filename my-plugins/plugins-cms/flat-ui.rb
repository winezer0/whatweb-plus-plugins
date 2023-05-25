Plugin.define do
name "flat-ui"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<link[^>]* href=[^>]+flat-ui(?:\.min)?\.css/},
]
end