Plugin.define do
name "moxa-nport串口服务器"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'MoxaHttp'},
]
end