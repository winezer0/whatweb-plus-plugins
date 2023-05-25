Plugin.define do
name "百度cdn" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'apps.bdimg.com'},
{:search=>"all", :text=>'libs.baidu.com'},
]
end