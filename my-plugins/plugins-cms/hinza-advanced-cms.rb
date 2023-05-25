Plugin.define do
name "hinza-advanced-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/hinzacms/, :search=>'body'},
{:search=>"all", :text=>'Hinza Advanced CMS'},
]
end