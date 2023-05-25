Plugin.define do
name "Portainer" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/meta name="author" content="Portainer.io/},
]
end