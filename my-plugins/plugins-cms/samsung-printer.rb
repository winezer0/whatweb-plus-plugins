Plugin.define do
name "samsung-printer"
authors [
"Andrew Horton",
]
version "0.1"
description "Samsung. SyncThru Web Service - Embedded Web Server"
matches [
{:search=>"all", :text=>'Samsung printer'},
{:text=>'var debugMode = ("$$GSI_TCPIP_IP_ADDR$$".indexOf(".")'},
]
end