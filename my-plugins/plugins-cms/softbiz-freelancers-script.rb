Plugin.define do
name "Softbiz-Freelancers-Script"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Softbiz Freelancers Script is an Extensive and Powerful script written in PHP to launch your own Freelancers website."
website "http://www.softbizscripts.com/freelancers-script-features.php"
dorks [
'"powered by Freelancers Script"'
]
matches [
{:text=>'                  <div align="center"><font size="3"><strong>Softbiz SEO Freelancers Script</strong><br>'},
{:text=>'<div align="right"><!-- --><font style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;font-style: normal;color: #009900;font-weight: bold;">Powered By <a href="http://www.softbizscripts.com/freelancers-script-features.php" style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;font-style: normal;color: #0099FF;font-weight: normal;" title="Softbiz Freelancers Script" target="_blank" >Freelancers script</a></font></div>'},
]
end
