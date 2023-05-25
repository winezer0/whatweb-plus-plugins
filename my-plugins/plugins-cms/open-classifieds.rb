Plugin.define do
name "open-classifieds"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/Open Classifieds ?([0-9.]+)?/, :search=>'body'},
{:search=>"all", :text=>'Open Classifieds'},
{:search=>'body', :regexp=>/open-classifieds\.com/},
]
end