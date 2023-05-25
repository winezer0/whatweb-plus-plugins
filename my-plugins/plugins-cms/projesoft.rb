Plugin.define do
name "projesoft"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Projesoft'},
{:search=>'body', :regexp=>/projesoft\.js/},
]
end