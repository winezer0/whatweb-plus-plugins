Plugin.define do
name "NeXpose-Security-Console"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NeXpose Security Console - Identifying vulnerabilities across networks, operating systems, databases, Web applications and a wide-range of system platforms through an integrated, intelligent scan engine, Rapid7 NeXpose prioritizes vulnerabilities using exploit risk scoring and asset criticality ratings. As a result, NeXpose customers benefit from lower risk exposure and remediation costs."
website "http://www.rapid7.com/products/vulnerability-management.jsp"
matches [
{:md5=>"e19ffb2bc890f5bdca20f10bfddb288d", :url=>"/style/image/favicon.ico"},
{:text=>"document.title = 'Log in to ' + document.nxp.skin.getProductName();"},
{:text=>'   <script type="text/javascript" src="/scripts/nexpose-features.js"></script>'},
{:text=>'   <script type="text/javascript" src="/scripts/nexpose-skin.js"></script>'},
{:text=>'   <script type="text/javascript" src="/scripts/nexpose.js"></script>'},
{:text=>'<input type="password" id="nexposeccpassword" name="nexposeccpassword" size="12"/>'},
{:text=>'<input type="password" id="nexposeccpassword" name="nexposeccpassword" size="12"></input>'},
{:text=>'<link rel="shortcut icon" href="/style/image/favicon.ico" type="image/vnd.microsoft.icon"></link>'},
{:text=>'<noscript><div class="LoginDialog">JavaScript must be enabled before you can continue.</div></noscript>'},
{:text=>'<script src="/scripts/nexpose-skin.js" type="text/javascript"></script>'},
{:text=>'<title>NeXpose Security Console :: Error</title>'},
]
aggressive do
m=[]
target = URI.join(@base_uri.to_s,"/style/").to_s
status,url,ip,body,headers=open_target(target)
m << { :name=>"Default Error Page Title" } if body =~ /<title>NeXpose Security Console :: Error<\/title>/
m
end
end
