Plugin.define do
name "quantcast-measure"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/\.quantserve\.com.quant\.js/, :search=>'body'},
]
end