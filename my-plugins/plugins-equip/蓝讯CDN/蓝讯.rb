Plugin.define do
name "蓝讯" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Powered-By-ChinaCache'},
]
end