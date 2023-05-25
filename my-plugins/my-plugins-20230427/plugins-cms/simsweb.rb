Plugin.define do
name "simsweb"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SIMSWeb (Service Information Management System) is a web server which gives your dealers and/or customers access to their accounts, history and other account details via a standard web browser."
website "http://simsware.com/products/software-simsweb.htm"
dorks [
'intitle:"SIMSWeb Login"'
]
matches [
{:text=>'<form onSubmit="sendinfo(); return false;" name="LOGON">'},
{:text=>'<script language="Javascript" src="/SIMSWeb/monitor.js"></script>'},
{:text=>'<title>SIMSWeb Loading.....</title>'},
{:text=>'index.html"><font color="black" face="arial">Loading SIMSWeb, please wait.....</font></a></h2>'},
]
end
