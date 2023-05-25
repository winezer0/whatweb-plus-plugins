Plugin.define do
name "ipb"
authors [
"Andrew Horton",
]
version "0.2"
description "IP address of the target, if available."
passive do
m=[]
m << {:string=>@ip } unless @ip.nil? or @ip.empty?
m
end
end