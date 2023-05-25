Plugin.define do
name "proximis-web-to-store"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Proximis Web to Store'},
{:search=>'body', :regexp=>/widget-commerce(?:\.min)?\.js/},
]
end