Plugin.define do
name "Swagger" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/<div id="swagger-ui"><\/div>/},
]
end