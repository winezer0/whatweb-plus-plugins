Plugin.define do
name "Dahuatech"
authors ["winezer0"]
version "0.1"
description "浙江大华技术股份有限公司"
website "https://www.dahuatech.com/"
matches [
{:regexp=>/var STATIC_URL  = "https?:\/\/www.dahuatech.com\/bocweb\/" ;/},
{:regexp=>/var UPLOAD_URL  = "https?:\/\/www.dahuatech.com\/upload\/" ;/},
{:search=>"all", :text=>'大华 WEB SERVICE'},
]
end