Plugin.define do
name "papaya-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<link[^>]*.papaya-themes./},
{:search=>"all", :text=>'papaya CMS'},
]
end