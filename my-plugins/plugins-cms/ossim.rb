Plugin.define do
name "OSSIM"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AlienVault OSSIM (Open Source Security Information Management). Its goal is to provide a comprehensive compilation of tools which, when working together, grant network/security administrators with a detailed view over each and every aspect of his or her networks, hosts, physical access devices, server, etc."
website "http://alienvault.com/community"
dorks [
'intitle:"AlienVault - Open Source SIM" Maximized User Password'
]
matches [
{:text=>'<table align="center" cellspacing=4 cellpadding=2 style="background-color:#eeeeee;border-color:#dedede">'},
{:text=>'<table align="center" style="padding:1px;background-color:#f2f2f2;border-color:#aaaaaa" class=nobborder><tr><td class="nobborder">'},
{:text=>'<title> AlienVault - Open Source SIM </title>'},
]
end
