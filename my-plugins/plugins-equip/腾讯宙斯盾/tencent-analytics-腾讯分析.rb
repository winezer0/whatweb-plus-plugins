Plugin.define do
name "tencent-analytics-腾讯分析"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'body', :regexp=>/tajs\.qq\.com.stats/},
]
end