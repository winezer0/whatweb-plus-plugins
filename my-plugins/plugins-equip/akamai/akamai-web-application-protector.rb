Plugin.define do
name "akamai-web-application-protector"
authors [
"winezero",
]
version "0.1"
matches [
{:certainty=>50, :regexp=>/aksb\.min\.js/, :search=>'body'},
{:regexp=>/ds-aksb-a\.akamaihd\.net.aksb.min.js/, :search=>'body'},
]
end