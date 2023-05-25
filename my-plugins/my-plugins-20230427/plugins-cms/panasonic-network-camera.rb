Plugin.define do
name "Panasonic-Network-Camera"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Panasonic network cameras"
dorks [
'inurl:"ViewerFrame?Mode="',
'inurl:"CgiStart?page="'
]
matches [
{:regexp=>/<BODY BACKGROUND="image\/Hcm1[0]?\.gif" 		[\t]?BGCOLOR="#efefef" TEXT="#000000" LINK="#000000" 			VLINK="#000000" ALINK="#000000">/},
{:regexp=>/<FRAME name=bar src="CgiTagMenu\?page=[^&]+&Language=[\d]+" scrolling=no NORESIZE>/},
{:text=>'      <FONT FACE="Arial" STYLE="font-size: 24px" COLOR="#ffffff"><B>Network Camera</B></FONT>'},
{:text=>'<HEAD><TITLE>WJ-NT104 MAIN PAGE</TITLE></HEAD>', :version=>"WJ-NT104"},
{:text=>'<META name="copyright" content="Copyright (C) 2003 Matsushita Electric Industrial Co., Ltd. All rights reserved.">'},
{:text=>'<TITLE>Digital Disk Recorder WJ-HD220 CONTROL MAIN PAGE</TITLE>', :version=>"WJ-HD220"},
{:text=>'<TITLE>WJ-HD200 DigitalDiskRecorder CONTROL MAIN PAGE</TITLE>', :version=>"WJ-HD200"},
{:text=>'MultiCameraFrame?Mode=Motion&Language'},
{:text=>'U S Software Web Server'},
{:text=>'window.location.replace("/view/idconv.cgi?UID=%i&FILE=/hdrindex.html&PAGE="+myDate.getTime());'},
]
passive do
m=[]
if @body =~ /      <FONT FACE="Arial" STYLE="font-size: 16px" COLOR="#ffffff">/
if @body =~ /        <B>([\d\-A-Z]+)<\/B>/
version=@body.scan(/        <B>([\d\-A-Z]+)<\/B>/)[0][0]
m << { :version=>version }
end
end
m
end
end
