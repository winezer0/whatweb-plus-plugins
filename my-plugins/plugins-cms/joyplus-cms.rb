Plugin.define do
name "joyplus-cms"
authors ["winezer0"]
version "0.1"
description "joyplus-cms（悦视频）是一套基于PHP和MySQL的开源视频后台管理系统。该系统具有视频资源采集、用户反馈管理、地址自动解析和消息推送管理等功能。 "
website "https://github.com/joyplus/joyplus-cms"
# Matches #
matches [
{:regexp=>/<a\s*href="https:\/\/github.com\/joyplus\/joyplus-cms\/wiki\/joyplus%E6%9C%8D%E5%8A%A1%E5%88%97%E8%A1%A8"\s*target="_blank"><font\s*style="color:\s*#00a1d9">\s*\S*API\s*\S*<\/font>\s*<\/a>/},
{:regexp=>/Powered\s*by\s*<a\s*href="http:\/\/www.joyplus.tv"\s*target="_blank">JoyPlus/}
]

end