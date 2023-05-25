Plugin.define do
name "Grizzly-NIO"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<div class="footer">Grizzly.*<\/div>/},
]
end