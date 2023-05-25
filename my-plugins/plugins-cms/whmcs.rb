Plugin.define do
name "WHMCS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WHMCS is an all-in-one client management, billing & support solution for online businesses."
website "http://www.whmcs.com/"
dorks [
'"Powered by WHMCompleteSolution" inurl:cart.php "Language"',
'intitle:"WHMCS Complete Billing & Support System - Login" "Remember me until I logout"'
]
matches [
{:search=>"headers", :text=>'whostmgrsession'},
{:text=>'<div id="welcome_box">Please <a href="clientarea.php" title="Login"><strong>Login</strong></a> or <a href="register.php" title="Register"><strong>Register</strong></a></div>'},
{:text=>'<p align="center">Powered by <a href="http://www.whmcs.com/" target="_blank">WHMCompleteSolution</a></p>'},
{:text=>'<p>Got a new license key?  <a href="licenseerror.php?licenseerror=change">Click here to enter it</a></p>'},
{:text=>'<td align="right" valign="middle">Powered by <a href="http://www.whmcs.com/" target="_blank">WHMCS</a></td>'},
{:version=>/<tr><td bgcolor="#efefef" height="20" align="center"><a href="index\.php">Home<\/a> \| <a href="clients\.php">Clients<\/a> \| <a href="supporttickets\.php">Tickets<\/a> \| <a href="orders\.php">Orders<\/a> \| <a href="activitylog\.php">Activity<\/a> \| <a href="logout\.php">Logout<\/a><\/td><\/tr>[\s]+<tr><td align="center">[^,^\s]+, [^<]+<br \/>Version: ([^<^\s]+)<\/td><\/tr>/},
]
end
