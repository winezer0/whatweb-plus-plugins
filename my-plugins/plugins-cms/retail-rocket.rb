Plugin.define do
name "retail-rocket"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/cdn\.retailrocket\.net/, :search=>'body'},
{:regexp=>/testvalue/, :search=>'headers[set-cookie]'},
]
end