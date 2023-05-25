Plugin.define do
name "qcms小型网站管理系统"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'QCMS_PHP'},
{:search=>"all", :text=>'QCMS小型网站管理系统_ASP'},
{:version=>/<a href="http:\/\/www.q-cms.cn" target="_blank">QCMS.* (.+)<\/a>/},
]
end