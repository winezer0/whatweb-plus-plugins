Plugin.define do
name "FlatNuke"
authors ["winezer0"]
version "0.1"
description "FlatNuke是一个PHP开发的内容管理系统，无须数据库支持，使用的是文本文件来保存内容。"
website "http://flatnuke.netsons.org/"
matches [
{:regexp=>/<meta name="copyright" content="Copyright \(c\) .* by FlatNuke Home page">/},
{:text=>'<a href="http://www.flatnuke.org/" target="_blank" title="FlatNuke">'},
{:text=>'<img align="middle" border="0" src="images/validate/flatnuke_powered.png" alt="FlatNuke">'},
{:text=>'<meta name="description" content="This is my personal website powered by Flatnuke technology">'},
]
end