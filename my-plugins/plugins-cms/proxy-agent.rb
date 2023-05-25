Plugin.define do
name "Proxy-Agent"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "This plugin retrieves the proxy agent from the HTTP header."
passive do
m=[]
m << { :string=>@headers["proxy-agent"].to_s } unless @headers["proxy-agent"].nil?
m
end
matches [
{:text=>'<img alt="" style="display:block;border:0px;width:1000px;max-height:300px;" src=\'/images/logo_pve.jpg\'>'},
{:version=>/<a href='http:\/\/www\.proxmox\.com' target='_blank' class="boxheadline">Proxmox Virtual Environment ([^<^\s]+)<\/a>/},
]
end