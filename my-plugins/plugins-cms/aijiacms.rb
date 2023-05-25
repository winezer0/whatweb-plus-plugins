Plugin.define do
name "AiJiaCMS(爱家CMS)"
authors ["hyhm2n <admin@imipy.com>"]
version "0.1"
description "aijiacms 网站系统是基于PHP+MySQL的房产行业门户解决方案。"
website "http://www.aijiacms.com/"
matches [
{:text=>"var aijiacms_chat = 0;"},
{:text=>"var aijiacms_member = '';"},
{:text=>"var aijiacms_message = 0;"},
{:text=>"var aijiacms_userid = 0;"},
{:text=>"var aijiacms_username = '';"},
]
end