Plugin.define do
name "blackbaud-luminate-online"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/js.convio.modules\.js/, :search=>'body'},
]
end