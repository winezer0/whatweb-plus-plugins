Plugin.define do
name "google-hosted-libraries"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'ajax.googleapis.com/ajax/libs'},
]
end