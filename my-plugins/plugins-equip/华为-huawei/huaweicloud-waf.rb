Plugin.define do
name "huaweicloud-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'HWWAFSESID'},
{:search=>'headers', :text=>'HuaweiCloudWAF'},
]
end