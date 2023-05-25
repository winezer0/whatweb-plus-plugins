Plugin.define do
name "大华dahua-dss"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'dahua_dss'},
{:search=>"all", :text=>'大华DSS'},
{:url=>'/portal/include/script/dahuaDefined/headCommon.js', :text=>'By HanLulu'},
]
end