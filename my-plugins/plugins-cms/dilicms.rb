Plugin.define do
name "DiliCMS"
authors ["winezer0"]
version "0.1"
description "DiliCMS，一个基于CodeIgniter的快速开发内容管理系统。"
website "http://www.dilicms.com/"
matches [
{:text=>"DiliCMS"},
{:url=>"/README.md", :regexp=>/[DiliCMS](http:\/\/www.dilicms.com)/},
]
end