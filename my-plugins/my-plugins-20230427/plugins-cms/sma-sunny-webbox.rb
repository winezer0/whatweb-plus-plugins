Plugin.define do
name "SMA-Sunny-WebBox"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sunny WebBox is a high-performance communication hub for medium to large-scale solar power plants. It features system monitoring, remote diagnosis, data storage and visualization."
website "http://www.sma-america.com/en_US/products/monitoring-systems/sunny-webbox.html"
matches [
{:search=>"all", :text=>'SMA Sunny Webbox'},
{:search=>"headers", :text=>'Server: WebBox-20'},
{:search=>"headers[server]", :regexp=>/^(WebBox-20|Sunny WebBox)$/},
{:url=>"/", :regexp=>/<meta http-equiv="refresh" content="0; URL=\/culture\/index\.dml">[\s]+<meta http-equiv="Content-Type" content="text\/html; charset=utf-8">[\s]+<title>SMA Sunny Webbox<\/title>[\s]+<link rel="SHORTCUT ICON" href="\.\.\/img\/favicon\.ico">/},
{:url=>"/", :regexp=>/<title>Sunny WebBox<\/title>[\s]+<\/head>[\s]+<frameset rows="75,\*,22" frameborder="no" border="2" framespacing="0">/},
{:url=>"/culture/index.dml", :account=>["User","Installer"], :version=>/<UserLevels><Items><XmlItem name="[^"^\s]*"><Items \/><Value>User<\/Value><\/XmlItem><XmlItem name="[^"^\s]*"><Items \/><Value>Installer<\/Value><\/XmlItem><\/Items><\/UserLevels><\/Element><\/Content><StatusBar deviceKey="[^"^\s]*" hideDataTransfer="[^"^\s]*" hidePasswordSafety="[^"^\s]*" hidePlantTime="[^"^\s]*" hideUserLevel="[^"^\s]*" hideUpdateState="[^"^\s]*" noRefresh="[^"^\s]*" serialNumber="[\d]*" version="([^"^\s]+)" \/><\/Page>/},
]
end
