Plugin.define do
name "foosuncms"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>"FS/"},
{:text=>"FS_Inc/Prototype.js"},
{:text=>"For Foosun"},
{:text=>"by Foosun.Cn,Foosun Content Management System"},
{:text=>'Created by DotNetCMS'},
{:text=>'For Foosun'},
{:text=>'Powered by www.Foosun.net,Products:Foosun Content Manage system'},
{:url=>"/Tags.html",:text=>"By Foosun.Cn"},
{:url=>'/FS_Inc/Prototype.js', :md5=>'2db077cd48333f12c19e50e677653e8d'},
{:url=>'/FS_Inc/Prototype.js', :md5=>'8e028000de50e6c281a292b8710ca4d3'},
{:url=>'/User/images/mbg_3.gif', :md5=>'1bc320b526bbf70007db31944aae5b4d'},
{:version=>/([\d\.]+)\(FoosunCMS\)/m},
]
end