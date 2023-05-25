Plugin.define do
name "MeiTrack"
authors [
"Andrew Horton",

]
version "0.1"
description "MS02 GPS Tracking System from MeiTrack. Provides a web server to manage tracking of vehicles, chidren, pets, etc. The devices have plenty of features including eavesdropping, control by SMS, RFID, GPRS, panic alarms, etc"
website "http://www.meitrack.net"
matches [
{:text=>'<form name="form1" method="post" action="trackerlogin.aspx" id="form1">'},
{:text=>'var _TrackerMain_GTVTSeries = "GT Series\\\\VT Series";'},
]
end
