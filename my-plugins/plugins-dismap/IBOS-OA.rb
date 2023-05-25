Plugin.define do
name "IBOS-OA"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<meta name="author" content="IBOS Team" \/>/},
{:search=>"header",:regexp=>/Set-Cookie: 8uxd_saltkey=.*/},
]
end