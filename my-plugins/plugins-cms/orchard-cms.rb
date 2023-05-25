Plugin.define do
name "orchard-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Orchard CMS'},
{:search=>'body', :regexp=>/Orchard/},
]
end