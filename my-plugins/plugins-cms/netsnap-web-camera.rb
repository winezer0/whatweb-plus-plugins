Plugin.define do
name "Netsnap-Web-Camera"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Netsnap java client web interface for video cameras"
dorks [
'intitle:"Live NetSnap Cam-Server feed" -intitle'
]
matches [
{:text=>'<p align="center"><font face="Arial"><small><small>NetSnap is a registered Trademark of'},
{:text=>'<title>Live NetSnap Cam-Server feed</title>'},
{:text=>'color="#008080">Live-Webcam</font></big></big></big></strong></em></font></h3>'},
{:text=>'color="#008080">NetSnap®</font></big></big></big></big><font size="6"> </font></strong></font></em></h3>'},
]
end
