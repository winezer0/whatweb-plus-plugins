Plugin.define do
name "php-cake"
authors [
"Andrew Horton",
]
version "0.2"
description "PHP MVC web framework"
passive do
m=[]
m << {:name=>"CAKEPHP Cookie" } if @headers["set-cookie"] =~ /CAKEPHP=.*/
m
end
matches [
{:text=>' - Powered by PhotoPost</title>'},
{:text=>'<frame name="mainFrame"  src="adm-misc.php?admact=mainmenu" scrolling="yes" frameborder="0" marginwidth="0" marginheight="0" border="no" />'},
{:text=>'<title>PhotoPost Administration Menu</title>'},
{:text=>'Powered by: <a target="_blank" href="http://www.photopost.com">PhotoPost</a> PHP vB3 Enhanced<br />'},
{:text=>'Powered by: <a target="_blank" href="http://www.photopost.com">PhotoPost</a> PHP<br />'},
]
end