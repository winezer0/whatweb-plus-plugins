Plugin.define do
name "Mirapoint-Email-Appliance"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Mirapoint Email Appliance is a Unix-like standards-compliant black-box e-mail server, with built-in anti-spam, anti-virus, webmail, POP, IMAP, calendar, and LDAP routing options available. System configuration and maintenance is done through a web interface, or through SSH or telnet access to a command line interpreter (CLI). Full access to the Unix-like Messaging Operating System (MOS) is not available. Depending on the model and configuration the appliances can be used as email routers, user mail servers, or as an all-in-one server."
website "http://www.mirapoint.com/index.php?id=products"
passive do
m=[]
if @headers["server"] =~ /^Mirapoint/
m << { :name=>"HTTP Server Header" }
if @headers["server"] =~ /^Mirapoint\/([^\s]+)$/
m << { :version=>"#{$1}" }
end
end
m
end
matches [
{:certainty=>25, :ghdb=>'inurl:mailman "Delivered by Mailman"'},
{:regexp=>/<td><a[^>]+href="[^"]+\/listinfo\/[^"]+"><strong>[^<]+<\/strong><\/a><\/td>/},
{:url=>"/favicon.ico",:allhash=>"eb6d4ce00ec36af7d439ebd4e5a395d7"},
{:version=>/<td><a href="http:\/\/www.gnu.org\/software\/mailman\/index.html">Delivered by Mailman<br>version (\d.\d.[0-9a-z]+)<\/a>/},
{:version=>/<td><img src="[^"]+\/mailman.jpg" alt="Delivered by Mailman"[^>]+><br>version (\d.\d.[0-9a-z]+)/},
]
end