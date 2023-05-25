Plugin.define do
name "E-cology-OA"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<script type="text\/javascript" src="\/js\/ecology/},
{:search=>"header",:regexp=>/Set-Cookie: ecology.*/},
{:url=>"/favicon.ico",:allhash=>"41eca7a9245394106a09b2534d8030df"},
]
end