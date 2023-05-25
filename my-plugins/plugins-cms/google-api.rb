Plugin.define do
name "google-api"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'ajax.googleapis.com/'},
{:text=>'www.google.com/jsapi'},
]
end