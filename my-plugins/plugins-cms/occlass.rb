Plugin.define do
name "OSClass"
authors ["winezer0"]
version "0.1"
description "osclass是一个开源项目，允许您在没有任何技术知识的情况下轻松创建分类网站。"
website "http://osclass.org/"
matches [
{:text=>'<div>This website is proudly using the <a title="Osclass web" href="http://osclass.org/">classifieds scripts</a> software <strong>Osclass</strong></div>'},
{:version=>/<meta name="generator" content="Osclass (.+)">/},
]
end