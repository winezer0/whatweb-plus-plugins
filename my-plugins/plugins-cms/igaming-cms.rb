Plugin.define do
name "iGaming-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iGaming CMS is a content management system designed for gaming websites. The system is written in PHP and requires a Mysql database for operation. "
website "http://www.igamingcms.com/"
dorks [
'"powered by iGaming CMS"'
]
matches [
{:text=>'<!-- iGaming CMS is free software, please do not remove the copyright message. -->'},
{:text=>'Powered by <a href="http://www.igamingcms.com/" target="_blank">iGaming CMS</a>'},
{:text=>'http://www.igamingcms.com/'},
]
end
