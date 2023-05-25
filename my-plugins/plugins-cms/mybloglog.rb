Plugin.define do
name "mybloglog"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/pub\.mybloglog\.com/, :search=>'body'},
{:search=>"all", :text=>'MyBlogLog'},
]
end