Plugin.define do
name "eact-route"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/.react-router(@|.)([\d.]+)(?:.[a-z]+)?.react-router(?:.min)?\.js/,:offset=>2, :search=>'body'},
]
end