Plugin.define do
name "Pandora-FMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pandora Flexible Monitoring System (FMS) is a performance & availability monitoring system, ready for big environments. It uses agents for local monitoring and can do several kinds of remote network monitoring. Agents works on Linux, Windows, AIX, HP-UX, Solaris and BSD systems."
website "http://pandorafms.org/"
dorks [
'"Login" "Password" "Your IP" intitle:"Pandora FMS - the Flexible Monitoring System"'
]
matches [
{:search=>"all", :text=>'Pandora FMS'},
{:text=>'<link rel="alternate" href="operation/events/events_rss.php" title="Pandora RSS Feed" type="application/rss+xml" />'},
{:text=>'<title>Pandora FMS - the Flexible Monitoring System</title>'},
{:version=>/<img src="images\/pandora_logo\.png" style="border:0px;" alt="logo" \/><\/a><br \/>v([^<]+)<\/td><td class="f9b">/},
]
end
