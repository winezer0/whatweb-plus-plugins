Plugin.define do
name "a-blog-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/a-blog cms/, :search=>'body'},
{:search=>"all", :text=>'a-blog cms'},
]
end