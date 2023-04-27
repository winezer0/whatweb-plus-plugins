Plugin.define do
name "cogent-datahub"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cogent DataHub - real-time data monitoring. DataHub WebView is a Silverlight application"
website "http://www.cogentdatahub.com/"
matches [
{:certainty=>25, :text=>'<title>Cogent DataHub WebView</title>'},
{:text=>'/images/Cogent.gif'},
{:text=>'<!-- The DataHub script that determines if the DataPid is running is at the top of this file. The DataHub script is not visable'},
{:text=>'<!-- The following ASP code generates the table of DataHub point values -->'},
{:text=>'<img src="images/Cogent.gif" alt="" width="449" height="47" border="0">'},
{:text=>'<link type="text/css" rel="stylesheet" href="css/dhwebserver.css" />'},
{:text=>'Cogent DataHub WebView'},
{:url=>"/images/Cogent.gif", :md5=>"c8f57d665418321b0248c22cd65efaff"},
{:url=>"/scripts/livedata.js", :text=>'timerID = setTimeout ("DataHubConnection.updateTimer()", this.timerTick);'},
]
end
