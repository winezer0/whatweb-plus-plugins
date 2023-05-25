Plugin.define do
name "Easy-Site-Edit"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EasySiteEdit CMS"
website "http://www.easysiteedit.com/"
dorks [
'"Powered by Easy Site-Edit"'
]
matches [
{:account=>/<TD bgcolor=#(F7FDFF|FFFFFF)>FTP User Name<\/TD>[\s]+<TD bgcolor=#(F7FDFF|FFFFFF)><INPUT TYPE="text" NAME="user_name" value="([^"]+)" class="textboxset(enlarge)?">(<p>\[&nbsp;Note:&nbsp;Ftp user name to login into the server&nbsp;\]<\/p>|&nbsp;&nbsp;&nbsp;\(Ftp user name to login into the server\))<\/TD>/, :offset=>2},
{:account=>/<TD bgcolor=#(F7FDFF|FFFFFF)>FTP User Password<\/TD>[\s]+<TD bgcolor=#(F7FDFF|FFFFFF)><INPUT TYPE="password" NAME="user_pass" value="([^"]+)" class="textboxset(enlarge)?">(&nbsp;&nbsp;&nbsp;\(Ftp password to login into the server\)|<p>[&nbsp;Note:&nbsp;Ftp password to login into the server&nbsp;]<\/p>)<\/TD>/, :offset=>2},
{:filepath=>/<TD bgcolor=#(F7FDFF|FFFFFF)>FTP Directory of CMS<\/TD>[\s]+<TD bgcolor=#(F7FDFF|FFFFFF)><INPUT TYPE="text" NAME="dir_cms" value="([^"]+)" class="textboxset(enlarge)?">(&nbsp;&nbsp;&nbsp;\(Directory path of cms in the remote server.\)|<p>\[&nbsp;Note:&nbsp;Directory path of cms in the remote server&nbsp;\]<\/p>)<\/TD>/, :offset=>2},
{:regexp=>/Powered by <a href="http:\/\/www\.easysiteedit\.com" class="link(tahoma11)?[^"]*" target="_blank">Easy Site-Edit<\/a>/},
]
end
