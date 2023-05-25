Plugin.define do
name "安脉学校综合管理平台"
authors [
"winezero",
]
version "0.1"
matches [
{:name=>'src="images/logobot.gif"'},
{:search=>"all", :text=>'安脉学校综合管理平台'},
{:version=>/<label id="lblname">(\/\\p{Han}+\/u)<\/label>/},
]
end