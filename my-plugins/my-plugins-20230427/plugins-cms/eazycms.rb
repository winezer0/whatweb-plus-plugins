Plugin.define do
name "EazyCMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "eazyCMS offers the functionality that would, in a custom-made system, cost thousands or tens of thousands - and it's all available online through your browser CMS stands for Content Management System - it is an eazy way to interactively change the contents of your site - the titles of pages, what they contain, and the number and structure of pages that make up your site. - http://www.eazycms.com/home.php?page_id=2"
dorks [
'"powered by eazyCMS"'
]
matches [
{:regexp=>/<a [^href]+href="http:\/\/www.eazyCMS.com[\/]*"[^>]*>powered by eazyCMS<\/a>/},
{:text=>'<a class="actionlink" href="http://www.eazyCMS.com'},
{:text=>'Powered by <a href="http://www.eazycms.com">eazyCMS</a>'},
{:text=>'Powered by <a title="eazyCMS :: The eazy-to-use Content Management System, maintain your website from anywhere in the world via a web browser!" href="http://www.eazycms.com" target="eazycms">eazyCMS</a>'},
{:text=>'powered by <a href="http://www.eazycms.com" target="_blank">eazyCMS</a>'},
{:text=>'powered by eazyCMS'},
]
end
