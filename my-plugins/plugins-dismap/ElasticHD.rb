Plugin.define do
name "ElasticHD" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/<title>Elastic HD.*<\/title>|<meta content=ElasticHD name=keywords>/},
]
end