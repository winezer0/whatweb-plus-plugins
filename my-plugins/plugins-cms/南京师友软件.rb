Plugin.define do
name "南京师友软件"
authors ["winezer0"]
version "0.1"
description "南京师友软件是一个网站集群管理系统"
website "http://www.edu025.net/"
matches [
{:text=>'<a href="/webManage/default.aspx">'},
{:text=>'<a href="/webSchool/default.aspx">'},
{:text=>'<a href="/webTeacher/default.aspx">'},
{:text=>'<a href="webResource/default.aspx">'},
]
end