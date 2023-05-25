Plugin.define do
name "fengcms"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<meta name="author" content="FengCms">'},
{:text=>'<meta name="generator" content="FengCms">'},
{:text=>'Powered by FengCms'},
{:text=>'content="FengCms'},
{:url=>'/admin/image/login_box.jpg', :md5=>'49bc11fadbff25cd5d4452ed9b5ec5ac'},
{:url=>'/admin/image/long_bg.png', :md5=>'480d4f11843eea195785d5f595008fcb'},
{:url=>'/admin/image/menu_h4.png', :md5=>'f2aed5692e0602e12bf0be15ab8617f0'},
{:version=>/FengCms Beta (.+)/},
]
end