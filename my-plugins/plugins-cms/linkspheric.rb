Plugin.define do
name "linkSpheric"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "linkSpheric. Possibly the world's coolest free online directory software that's absolutely free, no advertising, no spyware, just good old PHP-MySQL."
website "http://dataspheric.com/services/software/ls/"
dorks [
'"powered by linkSpheric" -Vulnerability'
]
matches [
{:md5=>'a421ddecd26e755219c63a130893d253', :url=>'images/ls_logo.png'},
{:text=>'   <strong>linkSpheric Administrator:</strong>'},
{:text=>'<!--License terms require you to leave this link attribution intact.  You are only permitted to remove it by special arrangement with dataSpheric-->'},
{:text=>'<!--License terms require you to leave this link attribution intact. You are only permitted to remove it by special arrangement with dataSpheric-->'},
{:text=>'<p style="text-align: center;"><a href="admin/index.php"><img src="images/ls_logo.png" width="190" height="75" alt="Powered by linkSpheric" /></a></p>'},
{:text=>'<style type="text/css" media="screen">@import "styles/ls_orange.css";</style>"'},
{:text=>'<title>linkSpheric Installer</title>'},
{:text=>'Powered by <a href="http://dataspheric.com/services/software/ls/" style="text-decoration: none; color: #000;"><strong>link<span style="font-size: 1.3em; color: #f60;">S</span>pheric</strong></a>'},
]
end
