Plugin.define do
name "dht-802.11n-router"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'mini_httpd'},
{:text=>'DHT 802.11n QoS Router'},
]
end