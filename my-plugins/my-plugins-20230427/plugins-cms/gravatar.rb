Plugin.define do
name "gravatar"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<[^>]+gravatar\.com.avatar./},
{:search=>"all", :text=>'Gravatar'},
]
end