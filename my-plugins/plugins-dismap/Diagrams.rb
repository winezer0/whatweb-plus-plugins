Plugin.define do
name "Diagrams"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<link rel="canonical" href="https:\/\/app.diagrams.net">/},
]
end