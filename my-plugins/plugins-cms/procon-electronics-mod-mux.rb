Plugin.define do
name "Procon-Electronics-Mod-Mux"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Procon Electronics Mod-Mux (Serial/Ethernet Converter & Modbus Gateway) is a MODBUS TCP Converter. This converter is used to connect an Ethernet network to a RS485/232 network, and converts the Modbus TCP protocol to the standard Modbus RTU serial protocol on RS485/232."
website "http://www.proconel.com/"
passive do
m=[]
if @headers["server"] =~ /^Procon Electronics Mod-Mux$/
m << { :name=>"HTTP Server Header" }
m << { :model=>@body.scan(/<title>MODBUS TCP \/ ([^\s]+) Converter<\/title>/)[0][0] } if @body =~ /<title>MODBUS TCP \/ ([^\s]+) Converter<\/title>/
end
m
end
matches [
{:search=>"all", :text=>'processmaker'},
{:text=>'<a href="http://www.processmaker.com" alt="Powered by ProcessMaker - Open Source Workflow & Business Process Management (BPM) Management Software" title="Powered by ProcessMaker" target="_blank">'},
{:text=>'<div class="companyLogo"><img src="/images/processmaker2.logo2.png"/></div>'},
{:text=>'<div class="content"><a href="#" onclick="openInfoPanel();return false;" class="FooterLink">| System Information |</a><br /><br />Copyright &copy; 2003-2012 <a href="http://www.colosa.com" alt="Colosa, Inc." target="_blank">Colosa, Inc.</a> All rights reserved.'},
{:text=>'<meta http-equiv="REFRESH" content="0;URL=/sys/en/classic/login/login.html" />'},
{:version=>/<div class="x-pm-footer-text">\s+ProcessMaker Ver\. ([^\s]+)<br\/>/},
]
end