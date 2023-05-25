Plugin.define do
name "tweenmax" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'TweenMax'},
{:search=>'body', :regexp=>/TweenMax(?:\.min)?\.js/},
]
end