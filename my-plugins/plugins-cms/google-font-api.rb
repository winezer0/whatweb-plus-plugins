Plugin.define do
name "google-font-api"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<link[^>]* href=[^>]+fonts\.(?:googleapis|google)\.com/},
{:search=>"all", :text=>'Google Font API'},
{:search=>'body', :regexp=>/googleapis\.com..+webfont/},
]
end