Plugin.define do
name "七牛cdn" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'cdn.staticfile.org'},
{:search=>"all", :text=>'glb.clouddn.com'},
{:search=>"all", :text=>'glb.qiniucdn.com'},
]
end