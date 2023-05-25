Plugin.define do
name "eleanor-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Eleanor CMS'},
{:search=>'body', :regexp=>/Eleanor/},
]
end