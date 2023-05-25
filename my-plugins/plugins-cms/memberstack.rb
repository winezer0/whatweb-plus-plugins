Plugin.define do
name "memberstack"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'MemberStack'},
{:search=>'body', :regexp=>/memberstack\.js/},
]
end