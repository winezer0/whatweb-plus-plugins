Plugin.define do
name "bootstrap-table"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<link[^>]+href="[^>]*bootstrap-table(?:\.min)?\.css/},
{:search=>"all", :text=>'Bootstrap Table'},
{:search=>'body', :regexp=>/bootstrap-table(?:\.min)?\.js/},
]
end