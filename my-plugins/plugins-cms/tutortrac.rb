Plugin.define do
name "TutorTrac"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Online management software for learning, writing, tutoring departments, and academic skills centers for traditional and athletic students. "
website "http://www.go-redrock.com/"
dorks [
'intitle:"TutorTrac Learning Center Tracking Software"'
]
matches [
{:search=>"all", :text=>'TutorTrac'},
{:text=>'<TITLE>TutorTrac Learning Center Tracking Software</TITLE>'},
{:text=>'<meta name="keywords" content="tutor,software,scheduling,learning,center,tutoring,assistant,assistance,education,accutrack,tutorial,community,college,university"><meta name="description" content="Web Based Tutor/Learning Center Management/Scheduling Software">'},
{:url=>"/TracWeb40/favicon.ico", :md5=>"365ccabab0c04ec5c6a9721725b76c36"},
{:url=>"/TutorTrac/favicon.ico", :md5=>"c56dda95e69b50c4b3802919aab0e950"},
{:version=>/<P ALIGN=right><FONT COLOR="#CCCCCC">version ([\d\.]+)[\s]+&copy;Copyright 2004-20[\d]{2}<br \/><\/FONT><A HREF="http:\/\/www\.go-redrock\.com"><FONT COLOR="#CCCCCC">RedRock/},
{:version=>/<P ALIGN=right><FONT SIZE="-1" FACE="Verdana" COLOR="#CCCCCC">version[\s]+([\d\.]+)[\s]?&copy;Copyright 20[\d]{2}, <\/FONT><A HREF="http:\/\/www\.go-redrock\.com"><FONT SIZE="-1" FACE="Verdana" COLOR="#CCCCCC">RedRock/},
]
passive do
m=[]
if @headers["server"].nil?
m << { :name=>"Location Header" } if @headers["location"] =~ /^\.\/TracWeb40\/Default\.html$/
m << { :name=>"Location Header" } if @headers["location"] =~ /^TutorTrac\/Default\.html$/
m << { :name=>"InstallCode Cookie" } if @headers["set-cookie"] =~ /InstallCode=[A-Z]+;/
m << { :name=>"ProductCode Cookie" } if @headers["set-cookie"] =~ /ProductCode=RSC[\d]+=[\d]+;/
end
m
end
end
