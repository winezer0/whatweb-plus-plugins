Plugin.define do
name "Novell-iChain"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Novell iChain is an integrated solution designed to securely link all the disparate elements of your network into one secure infrastructure. The iChain solution leverages Novell's Internet Caching System (ICS) to provide secure access to company information and databases. On the back end, iChain leverages NDS eDirectory to serve as a single repository of users' authentication information and access control privileges."
website "http://support.novell.com/techcenter/articles/ana20010201.html"
matches [
{:search=>"headers[X-Error-Info]", :regexp=>/Host name received is not for this web site/},
{:text=>'<HTML><HEAD><TITLE>Novell Proxy</TITLE></HEAD><BODY><b><p>HTTP request is being redirected to HTTPS.</b></BODY></HTML>'},
{:text=>'<HTML><HEAD><TITLE>Novell iChain</TITLE></HEAD><BODY><b><p>Your old browser does not support a 302 Redirect.</b></BODY></HTML>'},
{:text=>'<td height="20" align="center"><img height="8" width="445" src="ICHAINErrors/alertbar.gif"></td>'},
]
end
