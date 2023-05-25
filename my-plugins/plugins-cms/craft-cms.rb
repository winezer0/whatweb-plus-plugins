Plugin.define do
name "craft-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/\bCraft CMS\b/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'Craft CMS'},
]
end