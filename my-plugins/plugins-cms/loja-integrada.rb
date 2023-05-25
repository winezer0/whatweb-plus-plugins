Plugin.define do
name "loja-integrada"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/vtex-integrated-store/, :search=>'headers[x-powered-by]'},
]
end