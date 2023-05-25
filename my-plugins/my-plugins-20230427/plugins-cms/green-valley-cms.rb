Plugin.define do
name "green-valley-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/.content\.jsp\?objectid=/, :search=>'body'},
{:regexp=>/<img[^>]+.dsresource\?objectid=/},
{:search=>"all", :text=>'Green Valley CMS'},
]
end