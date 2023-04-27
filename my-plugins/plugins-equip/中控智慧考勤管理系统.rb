Plugin.define do
name "中控智慧考勤管理系统" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'sessionidadms'},
{:text=>'/media/images/ZKECO16.ico'},
{:text=>'考勤管理系统'},
]
end