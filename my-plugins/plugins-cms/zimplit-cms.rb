Plugin.define do
name "Zimplit-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.2"
description "Zimplit CMS: The easiest Open Source Content Management System for small web- and minisites"
website "http://www.zimplit.com/"
dorks [
'"powered by Zimplit CMS"'
]
matches [
{:regexp=>/<a[^>]+href="http:\/\/(www\.)?zimplit\.org\/?"[^>]*>Powered(&nbsp;| )by(&nbsp;| )Zimplit(&nbsp;| )CMS<\/a>/i},
{:regexp=>/<script[^>]+src="http:\/\/(client\.zimplit|www\.zimplit|zimplit)\.(org|com)\/(users\/publicUser|editor)\/(jquery|ZimgZoomer|ZZMenu)\.js"[^>]*><\/script>/i},
{:regexp=>/Powered(&nbsp;| )by(&nbsp;| )<A[^>]+href="http:\/\/(www\.)?zimplit\.org\/?"[^>]*>Zimplit(&nbsp;| )CMS<\/A>/i},
{:text=>"<!-- Please don't delete this. You can use this template for free and this is the only way that you can say thanks to me -->"},
{:text=>'<!-- YOU ARE ONLY ALLOWED TO HIDE, DELETE OR MODIFY "POWERED BY ZIMPLIT CMS" LINK, IF THE DOMAIN HAS BEEN REGISTERED WITH A COMMERCIAL LICENSE AT WWW.ZIMPLIT.ORG -->'},
{:version=>/<script[^>]+src="http:\/\/(client\.zimplit|www\.zimplit|zimplit)\.(org|com)\/users\/publicUser_v([\d\._]+)\/(jquery|ZimgZoomer|ZZMenu)\.js"[^>]*><\/script>/i, :offset=>2},
]
end