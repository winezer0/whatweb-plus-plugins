Plugin.define do
name "蓝凌eis智慧协同平台"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'/scripts/jquery.landray.common.js'},
{:text=>'href="http://www.landray.com.cn/"'},
{:text=>'v11_QRcodeBar clr'},
]
end