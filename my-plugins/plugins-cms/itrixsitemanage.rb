Plugin.define do
name "itrixsitemanage"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'X-Powered-Cms: Bitrix Site Manager'},
]
end