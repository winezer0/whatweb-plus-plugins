Plugin.define do
name "阿里云cdn" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'cdn.aliyuncs.com'},
{:search=>'headers', :text=>'aliyungf_tc='},
{:text=>'errors.aliyun.com'},
]
end