Plugin.define do
name "乾豪综合教务管理系统"
authors ["winezer0"]
version "0.1"
description "大连乾豪综合教务管理系统致力于高校信息化软件的研究与开发。目前在高校信息化方面已经形成了一套完整的信息化解决方案，本方案的目标是整合高校的管理数据和教学资源。"
website "http://www.tsanghao.com/"
matches [
{:text=>'href="ACTIONSHOWNEWS'},
{:url=>"ACTIONSHOWNEWS"},
]
end