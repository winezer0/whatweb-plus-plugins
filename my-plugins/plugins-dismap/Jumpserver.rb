Plugin.define do
name "Jumpserver" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/<script src="\/static\/js\/jumpserver.js"><\/script>/},
]
end