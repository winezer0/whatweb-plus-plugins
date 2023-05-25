Plugin.define do
name "livestreet-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/LiveStreet CMS/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'LiveStreet CMS'},
]
end