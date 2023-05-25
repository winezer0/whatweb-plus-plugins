Plugin.define do
name "google-publisher-tag"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/googletagservices\.com.tag.js.gpt\.js/, :search=>'body'},
{:search=>'body', :regexp=>/securepubads\.g\.doubleclick\.net.gpt/},
]
end