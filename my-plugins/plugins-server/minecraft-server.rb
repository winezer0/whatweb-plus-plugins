Plugin.define do
name "minecraft-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Minecraft server web UI. Minecraft is a deceptively simple yet addictive game with a clingy online community. MineOS is a Linux distribution designed for the sole purpose of hosting Minecraft worlds. It comes complete with web-admin interface, SSH interaction, and SCP capability for easy filesystem access."
website "http://minecraft.com/ - MineO"
website "http://minecraft.codeemo.com/index.html"
dorks [
'intitle:"MineOS Admin Page" "Map type"'
]
matches [
{:text=>'<span>Map type:</span><select id="mode" onchange="show(1,$(\'#mode\').val())">', :os=>"MineOS (Linux)"},
{:text=>'<title>MineOS Admin Page</title>', :os=>"MineOS (Linux)"},
]
passive do
m=[]
m << { :certainty=>75, :name=>"WWW-Authenticate Header" } if @headers["www-authenticate"] =~/Basic realm="Minecraft Admin Login" /
m
end
end
