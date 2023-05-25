Plugin.define do
name "pars-elecom-portal"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/Pars Elecom Portal/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'Pars Elecom Portal'},
{:search=>'body', :regexp=>/Pars Elecom Portal/},
]
end