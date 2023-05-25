Plugin.define do
name "MetasploitCoop" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/<title>MetasploitCoop<\/title>/},
]
end