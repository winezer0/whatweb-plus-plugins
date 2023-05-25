Plugin.define do
name "doubleclick-for-publishers-dfp"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'DoubleClick for Publishers (DFP)'},
{:search=>'body', :regexp=>/googletagservices\.com.tag.js.gpt(?:_mobile)?\.js/},
]
end