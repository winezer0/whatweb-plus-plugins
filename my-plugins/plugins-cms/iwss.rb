Plugin.define do
name "iwss"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.2"
description "Trend Micro InterScan Web Security Suite (IWSS) Proxy server"
website "http://us.trendmicro.com/us/products/enterprise/interscan-web-security-suite/"
passive do
m=[]
m << { :name=>"Proxy-Agent HTTP Header" } if @headers["proxy-agent"].to_s =~ /^[\s]*IWSS/
m
end
matches [
{:text=>"<p><b>Error</b>: Unable to read the configuration file: 'config-itop.php'. Please check the access rights on this file.</p>"},
{:text=>"<p><b>Security Warning</b>: the configuration file 'config-itop.php' should be read-only.</p><p>Please modify the access rights to this file.</p>"},
{:text=>'<title>iTop Login</title>'},
{:text=>'href="http://www.combodo.com/itop'},
{:text=>'iTop Login'},
{:version=>/<div id="login-logo"><a href="http:\/\/www\.combodo\.com\/itop"><img title="iTop [^\s]+ ([^\s^"]+)" src="\.\.\/images\/itop-logo/},
]
end