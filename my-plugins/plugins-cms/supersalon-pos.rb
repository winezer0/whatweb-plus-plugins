Plugin.define do
name "SuperSalon-POS"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "SuperSalon is one of the newest salon software systems in the market, but has already been licensed in thousands of national chain, regional chain and independent salons and cosmetology schools in the US, Canada, Europe and Asia, making it one of the most widely licensed salon POS software in the world."
website "http://www.supersalon.com/"
passive do
m=[]
m << { :name=>"WWW-Authenticate realm" } if @headers["www-authenticate"] =~ /^Basic realm="SuperSalon POS"$/
m
end
matches [
{:text=>'<TITLE>Sun Java[tm] System Calendar Express</TITLE>'},
{:text=>'<img src="imx/login-logo.gif" width="186" height="79" alt="Sun Microsystems, Inc.">'},
{:url=>"/imx/login-logo.gif", :md5=>"b86a7d65b64efa500048d9fc2840c390"},
{:version=>/<title>Sun Java\[tm\] System Calendar Express ([^<]+)<\/title>/},
]
end