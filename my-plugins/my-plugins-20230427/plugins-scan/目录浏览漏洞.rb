Plugin.define do
name "目录浏览漏洞" 
authors [
"winezero",

]
version "0.1"
matches [
{:text=>'- /</title>'},
{:text=>'Index of /'},
]
end