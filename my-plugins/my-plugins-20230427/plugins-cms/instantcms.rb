Plugin.define do
name "instantcms" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/InstantCMS/, :search=>'body'},
{:search=>"all", :text=>'InstantCMS'},
]
end