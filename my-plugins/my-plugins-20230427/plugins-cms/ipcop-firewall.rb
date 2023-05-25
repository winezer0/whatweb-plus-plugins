Plugin.define do
name "IPCop-Firewall"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "The IPCop Firewall is a Linux firewall distribution. It is geared towards home and SOHO users. The IPCop web-interface is very user-friendly and makes usage easy."
website "http://sf.net/projects/ipcop/"
dorks [
'intitle:"IPCop - Main page" "IP Address" "Hostname"'
]
matches [
{:regexp=>/<td style='background-color: #EAE9EE;' align='left' width='100%'><b>Home<\/b> | <a href='\/cgi-bin\/updates.cgi'>Updates<\/a> | <a href='\/cgi-bin\/changepw.cgi'>Passwords<\/a> | <a href='\/cgi-bin\/remote.cgi'>SSH Access<\/a> | <a href='\/cgi-bin\/gui.cgi'>GUI Settings<\/a> | <a href='\/cgi-bin\/backup.cgi'>Backup<\/a> | <a href='\/cgi-bin\/shutdown.cgi'>Shutdown<\/a> | <a href='\/cgi-bin\/credits.cgi'>Credits<\/a><\/td><\/tr><\/table>/},
{:search=>"all", :text=>'IPCop-Firewall'},
{:text=>"	<td valign='bottom'><a href='http://sf.net/projects/ipcop/' target='_blank'><img src='/images/sflogo.png' width='88' height='31' alt='Sourceforge logo' /></a></td>"},
{:text=>"    <title>IPCop - Main page</title>"},
{:text=>'    <style type="text/css">@import url(/include/ipcop.css);</style>'},
{:text=>'<!-- IPCOP FOOTER -->'},
{:url=>"/include/ipcop.css", :text=>'/* used in status.cgi (among others) */'},
{:version=>/	    <img src='\/images\/null.gif' width='1' height='29' alt='' \/>([\d\.]+)<\/td>/},
{:version=>/<small>IPCop v([^\s]+) &copy; 2001-20[\d]{2} The IPCop Team<\/small><\/td>/},
]
end
