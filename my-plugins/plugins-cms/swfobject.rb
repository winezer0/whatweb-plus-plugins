Plugin.define do
name "swfobject" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'SWFObject'},
{:search=>'body', :regexp=>/swfobject.*\.js/},
]
end