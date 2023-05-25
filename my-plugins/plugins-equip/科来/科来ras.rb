Plugin.define do
name "科来ras" 
authors [
"winezero",

]
version "0.2"
matches [
{:regexp=>/科来网络回溯|科来软件 版权所有|i18ninit.min.js/},
{:text=>'i18ninit.min.js'},
{:text=>'科来软件 版权所有'},
]
end