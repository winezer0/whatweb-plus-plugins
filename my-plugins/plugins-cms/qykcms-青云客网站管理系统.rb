Plugin.define do
name "qykcms-青云客网站管理系统"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'青云客网站管理系统_QYKCMS'},
{:text=>"Powered by <a target=\"_blank\" href=\"http://cms.qingyunke.com\""},
{:version=>/QYKCMS (.+)<\/a>/},
]
end