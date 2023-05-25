Plugin.define do
name "Google-Hack-Honeypot"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Google Hack Honeypot is the reaction to a new type of malicious web traffic: search engine hackers. This plugin identifies the following GHH modules: php-ping, HAXPLORER, phpSysInfo, PHPFM, SquirrelMail, wwwboard passwd.txt"
website "http://ghh.sourceforge.net/"
matches [
{:module=>"HAXPLORER", :regexp=>/<tr><td NOWRAP class="top left right">&nbsp;&nbsp;&nbsp;<a href="1\.php\?cmd=dir&dir=\.\/\.">\[\.\]<\/a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\/td>\n<td NOWRAP class="top right"><center>&nbsp;&nbsp;\n&nbsp;&nbsp;<\/center><\/td>\n<td NOWRAP class="top right">&nbsp;<\/td>\n<td NOWRAP class="top right">&nbsp;&nbsp;\n<strong>D<\/strong><strong>R<\/strong><Strong>X<strong>&nbsp;&nbsp;<\/td>\n<td NOWRAP class="top right" NOWRAP>\n&nbsp;&nbsp;Thu 0\d/},
{:module=>"PHP-Ping", :regexp=>/<title>The WorldsEnd.NET - Free Ping Script, written in PHP<\/title><\/head><body bgcolor="#FFFFFF" text="#000000"><\/body><p><font size="2">Your IP is: [\d\.]*<\/font><\/p><form methode="post" action="[^\"]*">   Enter IP or Host <input type="text" name="host" value="127.0.0.1"><\/input>   Enter Count <input type="text" name="count" size="2" value="4"><\/input>   <input type="submit" name="submit" value="Ping!"><\/input><\/form><br><b><\/b><\/body><\/html>/},
{:module=>"PHPFM", :text=>"<td>&nbsp;index.php</td><td width=60 align='right'>2,81&nbsp;KB</td><td width=35 align='center'>666</td><td width=110 align='right'>20:36 06-19-2003</td><td width=20>&nbsp;</td><td width=20><a href='?&amp;&amp;path=&amp;filename=index.php&amp;action=edit'><img src='icon/edit.gif' width=20 height=22 alt='Edit file' border=0></a></td><td width=20><a href='?&amp;&amp;path=&amp;filename=index.php&amp;action=rename'><img src='icon/rename.gif' width=20 height=22 alt='Rename file' border=0></a></td><td width=20><a href='?&amp;&amp;path=&amp;filename=index.php&amp;action=download'><img src='icon/download.gif' width=20 height=22 alt='Download file' border=0></a></td><td width=20><a href='?&amp;&amp;path=&amp;filename=index.php&amp;action=delete'><img src='icon/delete.gif' width=20 height=22 alt='Delete file' border=0></a></td></tr><tr><td width=20><img src='icon/text.gif' width=20 height=22 border=0 alt='File'></td><td>&nbsp;readme.txt</td><td width=60 align='right'>2,13&nbsp;KB</td><td width=35 align='center'>666</td><td width=110 align='right'>22:26 06-19-2003</td><td width=20>&nbsp;</td><td width=20><a href='?&amp;&amp;path=&amp;filename=readme.txt&amp;action=edit'><img src='icon/edit.gif' width=20 height=22 alt='Edit file' border=0></a></td><td width=20><a href='?&amp;&amp;path=&amp;filename=readme.txt&amp;action=rename'><img src='icon/rename.gif' width=20 height=22 alt='Rename file' border=0></a></td><td width=20><a href='?&amp;&amp;path=&amp;filename=readme.txt&amp;action=download'><img src='icon/download.gif' width=20 height=22 alt='Download file' border=0></a></td><td width=20><a href='?&amp;&amp;path=&amp;filename=readme.txt&amp;action=delete'><img src='icon/delete.gif' width=20 height=22 alt='Delete file' border=0></a></td></tr><tr><td colspan=9>&nbsp;</td></tr></table></td></tr></table><br /><br /><table class='bottom' cellpadding=0 cellspacing=0><tr><td align='center'>Powered by <a href='http://phpfm.zalon.dk/' target='_new' class='bottom'>PHPFM</a> 0.2.3</td>"},
{:module=>"SquirrelMail", :certainty=>75, :regexp=>/<body text="#000000" bgcolor="#FFFFFF" link="#0000CC" vlink="#0000CC" alink="#0000CC" onload="squirrelmail_loginpage_onload\(\);">\n<form action="redirect\.php" method="post">\n\n<table bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0" width="100%"><tr><td align="center"><center><img src="\.\.\/images\/sm_logo\.png" alt="/},
{:module=>"phpSysInfo", :regexp=>/<input type="submit" value="Submit"><\/form><\/center><hr>Created by<a href="http:\/\/phpsysinfo\.sourceforge\.net">&nbsp;phpSysInfo-2\.3<\/a> on Feb 11, 2005 at <br>/},
]
passive do
m=[]
if @base_uri.to_s =~ /\/passwd\.txt$/ and @body =~ /^WebAdmin:ae[\w]{11}$/
m << { :certainty=>25, :module=>"wwwboard passwd.txt" }
end
m
end
aggressive do
m=[]
if @base_uri.to_s =~ /\/passwd\.txt$/ and @body =~ /^WebAdmin:ae[\w]{11}$/
status,url,ip,body,headers=open_target(@base_uri.to_s)
if body != @body
m << { :module=>"wwwboard passwd.txt" }
end
end
m
end
end
