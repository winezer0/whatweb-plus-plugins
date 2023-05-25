Plugin.define do
name "kooboo-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/.Kooboo/, :search=>'body'},
{:search=>"all", :text=>'Kooboo CMS'},
]
end