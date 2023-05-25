Plugin.define do
name "omga"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Bomgar simplifies support by letting technicians control remote computers, servers, smartphones and network devices over the internet or network. With Bomgar, a support rep can see what customers see or control their computers for support."
website "http://www.bomgar.com/remotedesktopaccess/"
dorks [
'"Bomgar Corporation. Redistribution Prohibited. All Rights Reserved. " "Access Software for Help Desk Support"'
]
matches [
{:text=>'<a href="http://www.bomgar.com/products" class="inverse'},
{:text=>'<img src="/content/poweredby.jpg" alt="Remote Support by BOMGAR"/>'},
{:text=>'alt="Remote Support by BOMGAR'},
{:url=>"/content/poweredby.jpg", :md5=>"11a7db4d9e6f72253c60a3f649c5a157"},
]
passive do
m=[]
if @headers["server"] =~ /^Bomgar$/
m << { :name=>"HTTP Server Header" }
m << { :version=>@body.scan(/<!--Product Version: ([\d\.]+)-->/) } if @body =~ /<!--Product Version: ([\d\.]+)-->/
m << { :version=>@body.scan(/<!--Bomgar Version: ([\d\.]+)-->/) } if @body =~ /<!--Bomgar Version: ([\d\.]+)-->/
end
m
end
end
