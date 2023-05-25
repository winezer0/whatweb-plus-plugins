Plugin.define do
name "spidercontrol-ininet"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'SpiderControl iniNet'},
{:search=>'body', :regexp=>/iniNet SpiderControl/},
]
end