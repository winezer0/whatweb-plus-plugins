Plugin.define do
name "thinkrise"
authors ["winezer0"]
version "0.1"
description "TinyRise是一款B2C独立网店系统,适合企业及个人快速构建个性化网上商店。"
website "http://www.tinyrise.com/"
matches [
{:regexp=>/Powered by TinyShop\s*\S*tinyrise\.com\s*\S*/},
{:regexp=>/Powered\s*by\s*TinyRise/},
{:text=>'<link rel="shortcut icon" href="/tinyshop/favicon.ico">'},
]
end