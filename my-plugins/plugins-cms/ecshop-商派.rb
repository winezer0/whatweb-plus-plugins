Plugin.define do
name "ecshop-商派"
authors [
	"winezero"
]
version "0.1"
description "商派 Ecshop"
website "http://www.68ecshop.com"
matches [
{:url=>'images/login_dl.jpg', :mmh3=>'1659467063'},
{:search=>"body", :text=>'<a href="get_password.php?act=forget_pwd">您忘记了密码吗?</a></td>'},
{:search=>"body", :text=>'background:url(images/login_bg.png)'},
{:search=>"body", :text=>'background:url(images/login_dl.jpg)'},
]
end
