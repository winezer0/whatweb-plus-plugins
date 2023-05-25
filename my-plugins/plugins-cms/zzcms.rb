Plugin.define do
name "zzcms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/\s*\S*zzcms\s*\S*/},
{:text=>'<a target="blank" href="http://wpa.qq.com/msgrd?v=1&amp;uin=357856668&amp;Site=zzcms&amp;Menu=yes">'},
{:text=>'<img border="0" src="http://wpa.qq.com/pa?p=1:357856668:4"'},
{:text=>'ZCMS泽元内容管理'},
{:text=>'_ZCMS_ShowNewMessage'},
{:text=>'zcms_skin'},
{:url=>'/zs/zsshow.js', :text=>'JavaScript Document'},
]
end