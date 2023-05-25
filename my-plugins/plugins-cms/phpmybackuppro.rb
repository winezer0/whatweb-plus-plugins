Plugin.define do
name "phpMyBackupPro"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpMyBackup Pro is a very easy to use, free, web-based MySQL backup application, licensed under the GNU GPL."
website "http://www.phpmybackuppro.net/"
matches [
{:search=>"headers[www-authenticate]", :regexp=>/[bB]asic realm="phpMyBackupPro"/},
{:text=>'Please login (use your MySQL username and password): <a href="index.php?login=TRUE">Login</a>'},
{:url=>"/favicon.ico",:allhash=>"d361075db94bb892ff3fb3717714b2da"},
]
end
