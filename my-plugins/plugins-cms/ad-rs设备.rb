Plugin.define do
name "ad-rs设备"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'AD_RS_COOKIE'},
]
end