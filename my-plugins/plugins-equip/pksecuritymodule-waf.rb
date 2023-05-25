Plugin.define do
name "pksecuritymodule-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'A safety critical request was discovered and blocked'},
{:text=>'https://www.kitnetwork'},
]
end