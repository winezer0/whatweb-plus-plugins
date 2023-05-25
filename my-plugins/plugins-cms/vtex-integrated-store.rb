Plugin.define do
name "vtex-integrated-store"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/vtex-integrated-store/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'VTEX Integrated Store'},
]
end