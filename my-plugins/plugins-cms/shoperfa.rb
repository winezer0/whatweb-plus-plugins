Plugin.define do
name "shoperfa"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/^Shoperfa$/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'shoperfa'},
]
end