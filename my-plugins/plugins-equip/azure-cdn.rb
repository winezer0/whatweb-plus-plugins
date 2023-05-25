Plugin.define do
name "azure-cdn"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Azure CDN'},
{:search=>'headers[server]', :regexp=>/^(?:ECAcc|ECS|ECD)/},
]
end