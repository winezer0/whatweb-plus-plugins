Plugin.define do
name "Netquery"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Netquery is a complete PHP/SQL open-source toolkit of network utilities. Available as a standalone application and as a module for the following CMSs: e107, PHP-Fusion, Xaraya, Xoops and Zikula."
website "http://virtech.org/tools/"
dorks [
'inurl:"nquser.php" filetype:php -inurl'
]
matches [
{:certainty=>75, :text=>'<br /><a href="nquser.php?formtype=countries">Top Countries'},
{:certainty=>75, :text=>'<legend>NQ User Interface</legend>'},
{:md5=>"24a75ccc492b5a9118a4d226c25895c1"},
{:text=>'<a href="nqadmin.php"><img class="gobutton" src="images/btn_adm.gif" alt="Administration" /></a>'},
{:text=>'<a href="nquser.php?querytype=countries"><img class="gobuttonup"'},
{:text=>'<form class="nquser" action="nquser.php" method="post">'},
]
end
