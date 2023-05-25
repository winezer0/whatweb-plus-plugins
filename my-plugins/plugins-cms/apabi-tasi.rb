Plugin.define do
name "apabi-tasi"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'apabi_tasi'},
{:url=>'/tasi/css/main.css', :text=>'expression(onmouseover=function(){this.style.backgroundColor='},
{:url=>'/tasi/images/language_cn.gif', :md5=>'9c6d89d39da8ddaee2bd9af28de22fc7'},
]
end