Plugin.define do
name "tanberg-videoconference-management-system"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TANDBERG video conferencing management system web interface - http://www.tandberg.com/"
matches [
{:text=>'		<frame src="framemiddle.htm" name="No Name" noresize marginheight="0">'},
{:text=>'	<title>Middle frame of Videoconference Management System</title>'},
{:text=>'<meta NAME="AUTHOR" CONTENT="TANDBERG ASA (http://www.tandberg.net)">'},
{:text=>'<title>TANDBERG</title>'},
{:text=>'content="TANDBERG is a leading global provider of videoconferencing solutions. The company designs, develops and manufactures videoconferencing systems and offers sales, support and value-added services in more than 50 countries worldwide.">'},
]
end
