Plugin.define do
name "baidu-analytics-百度统计"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/hm\.baidu\.com.hm\.js/, :search=>'body'},
]
end