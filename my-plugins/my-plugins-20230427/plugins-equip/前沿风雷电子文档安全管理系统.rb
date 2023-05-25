Plugin.define do
name "前沿风雷电子文档安全管理系统" 
authors [
    "winezero",
]
version "0.1"
matches [
{:text=>"/drm/template/custom/"},
{:text=>"/drm/template/images/"},
{:text=>"<a href=\"http://www.drm.net.cn\" target=\"_blank\">"},
{:text=>"前沿风雷电子文档安全管理系统"},
]
end