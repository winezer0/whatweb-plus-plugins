Plugin.define do
name "kangle反向代理" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'kangle'},
{:text=>'welcome use kangle'},
]
end