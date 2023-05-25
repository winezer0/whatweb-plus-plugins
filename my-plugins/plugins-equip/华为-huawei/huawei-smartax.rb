Plugin.define do
name "huawei-smartax"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Basic realm="Huawei SmartAX'},
]
end