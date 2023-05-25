Plugin.define do
name "trendnet-ip-cam"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Basic realm="netcam'},
]
end