Plugin.define do
name "google-cloud"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/^1\.1 google$/, :search=>'headers[via]'},
{:search=>"all", :text=>'Google Cloud'},
]
end