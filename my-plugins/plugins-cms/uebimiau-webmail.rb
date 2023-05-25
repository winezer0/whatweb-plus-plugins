Plugin.define do
name "Uebimiau-Webmail"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Uebimiau Webmail"
website "http://www.uebimiau.org/download.php"
dorks [
'"Uebimiau Webmail v3.2.0-2.0" -disclosure'
]
matches [
{:text=>'<meta name="keywords" content="uebimiau,tdah,uebimiau,webmail,email,mail,client,application,pop3,php,open     source,free,sourceforge,development" />', :certainty=>75},
{:text=>'<p>You are about to re-install Uebimiau Webmail on you system.<br>Thanks to log with your UebiMiau Admin ID and password to continue.</p>', :module=>"Install Page"},
{:text=>'<script type="text/javascript" src="themes/default/js/webmail.js"></script>'},
{:text=>'<title>Uebimiau ( Installer )</title>', :module=>"Install Page"},
{:version=>/					<td class="info">Uebimiau Webmail v([^<]{1,15})<\/td>/},
]
end
