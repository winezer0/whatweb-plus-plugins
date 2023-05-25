Plugin.define do
name "DotNetCMS"
authors ["winezer0"]
version "0.1.1"
description "DotNetCMS [Chinese] - Homepage: http://www.foosun.cn/"
dorks [
'"Powereds by DotNetCMS"'
]
matches [
{:text=>"Created by DotNetCMS"},
]
end