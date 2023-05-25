Plugin.define do
name "VMware-Zimbra"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zimbra is a next-generation collaboration server that provides organizations greater overall flexibility and simplicity with integrated email, contacts, calendaring, sharing and document management plus mobility and desktop synchronization to users on any computer."
website "http://www.zimbra.com/products/"
dorks [
'"Go offline with Zimbra Desktop" intitle:"Zimbra Web Client Log In"'
]
matches [
{:text=>'<!--div id="ZLoginAppName">Web Client</div-->'},
{:text=>'<div id="ZLoginNotice" class="legalNotice-small"><a target="_new" href="http://www.zimbra.com">Zimbra</a> :: the leader in open source messaging and collaboration ::'},
{:text=>'<div id="ZLoginWhatsThis" class="ZLoginInfoMessage" style="display:none;"><center style="margin-bottom:3px;"><b>Client Types:</b></center>'},
{:text=>'<h1><a href="http://www.zimbra.com/" id="bannerLink" target="_new">'},
{:text=>'<meta name="description" content="Zimbra provides open source server and client software for messaging and collaboration. To find out more visit http://www.zimbra.com.">'},
{:text=>'<td><input id="password" class="zLoginField" name="password" type="password" value="" size="40"/></td>'},
{:text=>'<title>Zimbra Web Client Log In</title>'},
]
passive do
m=[]
m << { :name=>"ZM_TEST Cookie" } if @headers["set-cookie"] =~ /ZM_TEST=true/
m
end
end
