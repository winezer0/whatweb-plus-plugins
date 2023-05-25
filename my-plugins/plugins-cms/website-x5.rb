Plugin.define do
name "website-x5"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/Incomedia WebSite X5 (\w+ [\d.]+)/},
{:search=>"all", :text=>'WebSite X5'},
]
end