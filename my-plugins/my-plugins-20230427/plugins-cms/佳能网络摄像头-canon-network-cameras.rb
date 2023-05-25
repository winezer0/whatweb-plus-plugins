Plugin.define do
name "佳能网络摄像头-canon-network-cameras"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Cameras'},
{:search=>"all", :text=>'佳能网络摄像头 (Canon Network'},
{:text=>'/viewer/live/en/live.html'},
]
end