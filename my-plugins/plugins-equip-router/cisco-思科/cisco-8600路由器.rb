Plugin.define do
name "cisco-8600路由器"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Cisco 8600'},
]
end