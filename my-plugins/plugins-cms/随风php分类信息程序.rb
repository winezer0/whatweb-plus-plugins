Plugin.define do
name "随风php分类信息程序"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'a href="http://www.gw413.com"'},
{:text=>'title="发布信息"><b>发布信息</b></a></span>信息列表'},
{:text=>'随风分类信息'},
]
end