Plugin.define do
name "windriver设备"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'WindRiver-WebServer'},
]
end