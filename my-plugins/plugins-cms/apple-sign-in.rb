Plugin.define do
name "apple-sign-in"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<meta[ˆ>]*appleid-signin-client-id/},
{:regexp=>/appleid\.auth\.js/, :search=>'body'},
]
end