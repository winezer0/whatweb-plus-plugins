Plugin.define do
name "GreenCMS"
authors ["winezer0"]
version "0.1"
description "GreenCMS是一套基于ThinkPHP开发的内容管理系统（CMS）。"
website "https://github.com/GreenCMS/GreenCMS"
matches [
{:text=>'/Public/NovaGreenStudio/css/bootstrap-responsive.min.css'},
{:text=>'/Public/NovaGreenStudio/css/main.css'},
{:text=>'/Public/NovaGreenStudio/css/sl-slide.css'},
{:text=>'/index.php?m=&c=form&a=apply'},
{:url=>"/composer.json",:text=>'GreenCMS'},
{:url=>"/robots.txt",:text=>'GreenCMS'},
]
end