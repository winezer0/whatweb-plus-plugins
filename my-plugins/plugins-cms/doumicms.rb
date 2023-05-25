Plugin.define do
name "doumicms"
authors ["winezer0"]
version "0.1"
description "DuomiCms采用PHP+MYSQL架构,原生PHP代码带来卓越的访问速度和负载能力免去您的后顾之优。是一套专为影视站长而设计的视频点播系统，灵活，方便，人性化设计简单易用是最大的特色，是快速架设视频网站首选，只需3分钟即可建立一个海量的视频讯息的行业网站。"
website "https://duomicms.net"
matches [
{:text=>"Power by DuomiCms"},
{:version=>/\(DuomiCms (.+)\)/},
]
end