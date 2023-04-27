Plugin.define do
name "Tribiq"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tribiq CMS is a content management system for websites. Without needing technical skills, you can edit and grow your website."
website "http://tribiq.com/"
dorks [
'"powered by Tribiq"'
]
matches [
{:md5=>'1d334359c5d0f68de91f33c78581f25c', :url=>'/favicon.ico'},
{:regexp=>/Designed &amp; Powered by <a href="http:\/\/www.tribiq.com[\/]*[^>]+>Tribiq CMS<\/a>/},
{:text=>'					document.location.href = "adminlogin.php?sk=" + (hash? hash : "tribiq__content");'},
{:text=>'				<p><a href="adminlogin.php">Please log in</a></p>'},
{:text=>'<a href="http://tribiq.com">Powered by Tribiq CMS</a>'},
{:text=>'<title>Tribiq CMS Administrator Login</title>'},
{:text=>'Designed &amp; Powered by <a alt="Tribiq CMS" target="_blank" title="Tribiq CMS" href="http://www.tribiq.com">Tribiq CMS</a>'},
{:text=>'Powered by <a href="http://tribiq.com" target="_blank">TRIBiQ</a>'},
{:text=>'Powered by <a href="http://tribiq.com" title="TRIBiQ Content Management System" target="_blank">Tribiq</a>'},
{:text=>'Powered by <a href="http://tribiq.com/" target="_blank">Tribiq CMS</a>'},
]
passive do
m=[]
if @body =~ /<meta name="generator" content="Tribiq CMS ([\d\.a-z]+)" \/>/
version=@body.scan(/<meta name="generator" content="Tribiq CMS ([\d\.a-z]+)" \/>/)[0][0]
m << {:version=>version}
end
if @body =~ /    			Powered by <a href="http:\/\/tribiq.com[\/]*" target="_blank">Tribiq CMS<\/a>/
if @body =~ /    			([\d\._a-z]+)    		<\/div>/
version=@body.scan(/    			([\d\._a-z]+)    		<\/div>/)[0][0]
m << {:version=>version}
end
end
m
end
end
