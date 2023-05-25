Plugin.define do
name "instabot" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Instabot'},
{:search=>'body', :regexp=>/.rokoInstabot\.js/},
]
end