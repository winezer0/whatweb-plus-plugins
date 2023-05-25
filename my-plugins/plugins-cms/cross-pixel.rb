Plugin.define do
name "cross-pixel"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Cross Pixel'},
{:search=>'body', :regexp=>/tag\.crsspxl\.com.s1\.js/},
]
end